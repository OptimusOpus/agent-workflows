#!/bin/bash

# This script links the globally installed AI agent workflows
# into the current project.

# Run this from the root directory of any project where you want to use
# the global workflows.

GREEN="\033[0;32m"
YELLOW="\033[1;33m"
BLUE="\033[0;34m"
NC="\033[0m" # No Color

WINDSURF_GLOBAL_DIR="${HOME}/.windsurf/workflows"
WINDSURF_LOCAL_DIR="./.windsurf/workflows"

CLAUDE_GLOBAL_DIR="${HOME}/.claude/commands"
CLAUDE_LOCAL_DIR="./.claude/commands"

echo -e "${BLUE}=== Linking Global AI Agent Workflows ===${NC}"

# --- Link Windsurf Workflows ---
if [ ! -d "$WINDSURF_GLOBAL_DIR" ]; then
    echo -e "${YELLOW}Global Windsurf workflows not found at ${WINDSURF_GLOBAL_DIR}${NC}"
    echo -e "Please run the install-global-workflows.sh script from the agent-workflows repository first."
    exit 1
fi

mkdir -p "$WINDSURF_LOCAL_DIR"
# Use a loop to create symlinks, which is safer than a wildcard
for file in "$WINDSURF_GLOBAL_DIR"/*; do
    if [ -f "$file" ]; then
        ln -sf "$file" "$WINDSURF_LOCAL_DIR/"
    fi
done
echo -e "${GREEN}Successfully linked Windsurf workflows to ${WINDSURF_LOCAL_DIR}${NC}"


# --- Link Claude Commands ---
if [ ! -d "$CLAUDE_GLOBAL_DIR" ]; then
    echo -e "${YELLOW}Global Claude commands not found at ${CLAUDE_GLOBAL_DIR}${NC}"
    echo -e "Please run the install-global-workflows.sh script from the agent-workflows repository first."
    exit 1
fi

mkdir -p "$CLAUDE_LOCAL_DIR"
# Use a loop to create symlinks
for file in "$CLAUDE_GLOBAL_DIR"/*; do
    if [ -f "$file" ]; then
        ln -sf "$file" "$CLAUDE_LOCAL_DIR/"
    fi
done
echo -e "${GREEN}Successfully linked Claude commands to ${CLAUDE_LOCAL_DIR}${NC}"


echo -e "\n${GREEN}Setup complete!${NC}"
echo -e "${YELLOW}Restart your editor to see the linked workflows and commands.${NC}"
