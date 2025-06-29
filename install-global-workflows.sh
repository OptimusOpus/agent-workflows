#!/bin/bash

# Colors for terminal output
GREEN="\033[0;32m"
YELLOW="\033[1;33m"
BLUE="\033[0;34m"
NC="\033[0m" # No Color

echo "${BLUE}=== AI Agent Workflow Global Installation ===${NC}"

# Default installation directories
WINDSURF_GLOBAL_DIR="${HOME}/.windsurf/workflows"
CLAUDE_GLOBAL_DIR="${HOME}/.claude/commands"

# Check if directories exist, create if needed
if [ ! -d "$WINDSURF_GLOBAL_DIR" ]; then
    echo -e "${YELLOW}Windsurf global workflows directory not found.${NC}"
    read -p "Would you like to create ${WINDSURF_GLOBAL_DIR}? (y/n): " create_dir
    if [[ $create_dir =~ ^[Yy]$ ]]; then
        mkdir -p "$WINDSURF_GLOBAL_DIR"
        echo -e "${GREEN}Created ${WINDSURF_GLOBAL_DIR}${NC}"
    else
        read -p "Please enter the path to your Windsurf workflows directory: " WINDSURF_GLOBAL_DIR
        if [ ! -d "$WINDSURF_GLOBAL_DIR" ]; then
            mkdir -p "$WINDSURF_GLOBAL_DIR"
            echo -e "${GREEN}Created ${WINDSURF_GLOBAL_DIR}${NC}"
        fi
    fi
fi

# Check Claude commands directory
if [ ! -d "$CLAUDE_GLOBAL_DIR" ]; then
    echo -e "${YELLOW}Claude commands directory not found.${NC}"
    read -p "Would you like to create ${CLAUDE_GLOBAL_DIR}? (y/n): " create_dir
    if [[ $create_dir =~ ^[Yy]$ ]]; then
        mkdir -p "$CLAUDE_GLOBAL_DIR"
        echo -e "${GREEN}Created ${CLAUDE_GLOBAL_DIR}${NC}"
    else
        read -p "Please enter the path to your Claude commands directory: " CLAUDE_GLOBAL_DIR
        if [ ! -d "$CLAUDE_GLOBAL_DIR" ]; then
            mkdir -p "$CLAUDE_GLOBAL_DIR"
            echo -e "${GREEN}Created ${CLAUDE_GLOBAL_DIR}${NC}"
        fi
    fi
fi

# Function to install files with confirmation on overwrite
install_files() {
    local src_dir=$1
    local dest_dir=$2
    local file_type=$3
    
    echo -e "${BLUE}Installing $file_type...${NC}"
    
    # Check if source directory exists
    if [ ! -d "$src_dir" ]; then
        echo -e "${YELLOW}Warning: Source directory $src_dir not found. Skipping $file_type installation.${NC}"
        return 1
    fi
    
    # List of files installed
    installed_files=()
    
    # Copy each file, prompting for overwrite if needed
    for file in "$src_dir"/*; do
        if [ -f "$file" ]; then
            filename=$(basename "$file")
            if [ -f "$dest_dir/$filename" ]; then
                echo -e "${YELLOW}$filename already exists in $dest_dir${NC}"
                read -p "Overwrite? (y/n): " overwrite
                if [[ $overwrite =~ ^[Yy]$ ]]; then
                    cp "$file" "$dest_dir/"
                    installed_files+=("$filename")
                fi
            else
                cp "$file" "$dest_dir/"
                installed_files+=("$filename")
            fi
        fi
    done
    
    # Print summary
    if [ ${#installed_files[@]} -gt 0 ]; then
        echo -e "${GREEN}Installed $file_type:${NC}"
        for file in "${installed_files[@]}"; do
            echo -e "  - $file"
        done
    else
        echo -e "${YELLOW}No $file_type were installed.${NC}"
    fi
}

# Install Windsurf workflows
install_files "$(pwd)/.windsurf/workflows" "$WINDSURF_GLOBAL_DIR" "Windsurf workflows"

# Check if there's a fallback location
if [ $? -ne 0 ] && [ -d "$(pwd)/windsurf-workflows" ]; then
    echo -e "${YELLOW}Trying alternate location for Windsurf workflows...${NC}"
    install_files "$(pwd)/windsurf-workflows" "$WINDSURF_GLOBAL_DIR" "Windsurf workflows"
fi

# Install Claude commands from both claude-commands/ and .claude/commands/ directories
install_files "$(pwd)/claude-commands" "$CLAUDE_GLOBAL_DIR" "Claude commands (YAML format)"

# Also install from .claude/commands if it exists (native format)
if [ -d "$(pwd)/.claude/commands" ]; then
    echo -e "${BLUE}Installing native Claude commands...${NC}"
    install_files "$(pwd)/.claude/commands" "$CLAUDE_GLOBAL_DIR" "Claude commands (native format)"
fi

echo -e "\n${GREEN}Installation complete!${NC}"
echo -e "${BLUE}Windsurf workflows installed to: ${NC}${WINDSURF_GLOBAL_DIR}"
echo -e "${BLUE}Claude commands installed to: ${NC}${CLAUDE_GLOBAL_DIR}"

echo -e "\n${GREEN}Available Commands:${NC}"
echo -e "  • ${BLUE}/execute [TICKET-ID]${NC} - Expert development agent for implementation"
echo -e "  • ${BLUE}/pr-review [PR-NUMBER]${NC} - Comprehensive PR analysis and code review"
echo -e "  • ${BLUE}/qa-check [PR-NUMBER]${NC} - Logical QA validation against requirements"

echo -e "\n${YELLOW}Note: Restart your Windsurf and Claude applications to use the new workflows and commands.${NC}"
