# agent-workflows
ai agent workflow for work

# Development Workflow Plan

## Overview
This workflow uses markdown files for communication and task management, leveraging Claude Code MCP for execution. Each ticket maintains its own directory structure with related documentation.

## Quick Start
Use the `create-ticket.sh` script to generate the required directory structure:
```bash
./create-ticket.sh GLU-2234
```

This creates all necessary files with templates for your ticket.

## File Structure
```
./[TICKET-ID]/
├── [TICKET-ID].md      # Main ticket/task description
├── research.md         # Research findings and analysis
├── plan.md            # Implementation plan
├── review.md          # Code review findings
└── qa.md              # QA test results and issues
```

## Workflow Phases

### 1. Planning Phase
**Tools:** Windsurf (for local indexing and interface)

**Process:** (use Windsurf plan mode for all of this)
1. **Requirements Analysis**
   - Review provided ticket/task markdown file (e.g., GLU-2234.md)
   - Collaborate to ensure complete understanding and gather any missing information
   - Update ticket documentation as needed

2. **Research**
   - Analyze codebase to identify affected components
   - Use supplementary tools as needed:
     - GitHub Context (https://github.com/upstash/context7)
     - Perplexity MCP (as backup if further research is needed)
   - Generate `research.md` documenting findings

3. **Planning**
   - Create detailed `plan.md` based on research findings
   - Include implementation approach, affected files, and potential risks

### 2. Execution Phase
**Tools:** Claude Code

**Process:**
1. Review the `plan.md` file
2. Execute `/execute [TICKET-ID]` command within Claude Code session
3. Follow Test-Driven Development (TDD) approach when applicable
4. Reference ticket markdown throughout implementation
5. Update ticket documentation with implementation details and decisions

### 3. Review Phase
**Tools:** Claude Code (primary), Windsurf (for additional analysis)

**Process:**
1. Perform initial code review and static analysis locally
2. Create pull request
3. Use `/pr-review [PR-NUMBER]` command to analyze the PR and update `review.md`
4. Use `/execute [TICKET-ID]` command to address issues from `review.md` if needed

### 4. Quality Assurance Phase
**Tools:** Claude Code (primary), Windsurf or additional tools (context-dependent)

**Process:**
1. Use `/qa-check [PR-NUMBER]` command to validate PR against user story requirements
2. Review generated `qa.md` report for comprehensive QA findings
3. Execute additional tests if needed (potentially using Playwright for E2E testing)
4. Address any identified issues before deployment

## Complete Command Workflow

This workflow provides three powerful Claude Code commands that work together:

1. **`/execute [TICKET-ID]`** - Implementation Phase
   - Expert development agent for ticket implementation
   - Reads ticket requirements and plan
   - Implements with TDD approach and performance optimization
   - Updates ticket documentation with progress

2. **`/pr-review [PR-NUMBER]`** - Review Phase
   - Comprehensive code quality analysis
   - Security and performance review
   - Updates `review.md` with detailed findings
   - Provides actionable feedback for improvements

3. **`/qa-check [PR-NUMBER]`** - Quality Assurance Phase
   - Validates PR against user story requirements
   - Tests business logic and user workflows
   - Verifies acceptance criteria fulfillment
   - Updates `qa.md` with comprehensive QA report

Each command leverages parallel execution and performance optimization to provide rapid, thorough analysis while maintaining development velocity.

## Benefits
- Clear documentation trail for each ticket
- Systematic approach to development
- Integrated tooling for each phase
- Comprehensive quality checks before deployment

## Required Tools & MCPs

### Core Tools
- **Windsurf**: For local code indexing, workflow execution, and planning
- **Claude Code**: For implementation and execution phases
- **create-ticket.sh**: Script for generating ticket directory structure

### MCP Servers
- **GitHub Context**: For codebase search and analysis (https://github.com/upstash/context7)
- **Perplexity MCP**: For additional research capabilities
- **Playwright MCP**: For end-to-end testing during QA phase

### Custom Commands
- `/execute [TICKET-ID]`: Expert development agent for ticket implementation
- `/pr-review [PR-NUMBER]`: Comprehensive PR analysis and review documentation
- `/qa-check [PR-NUMBER]`: Logical QA validation against user story requirements

### Workflows
- `/requirements`: Requirements analysis workflow
- `/research`: Research findings workflow
- `/planning`: Implementation planning workflow
- `/project-planning`: Combined workflow for all planning phases
- `/address-pr-comments`: Workflow for handling pull request feedback

## Installation

This repository includes a script to install the workflows and commands globally on your system, making them available in all your projects.

### Global Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/agent-workflows.git
   cd agent-workflows
   ```

2. Run the installation script:
   ```bash
   ./install-global-workflows.sh
   ```

3. Follow the interactive prompts:
   - The script will detect or create the default global directories:
     - `~/.windsurf/workflows` for Windsurf workflows
     - `~/.claude/commands` for Claude commands
   - It will prompt for confirmation before overwriting existing files
   - You can specify custom installation directories if needed

4. Restart your Windsurf and Claude applications to apply the changes

### Manual Installation

Alternatively, you can manually copy the workflow files:

- **Windsurf workflows**: Copy files from `.windsurf/workflows/` to `~/.windsurf/workflows/`
- **Claude commands**: Copy files from `claude-commands/` to `~/.claude/commands/`