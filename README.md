# AI Agent Development Workflows

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Claude Code Compatible](https://img.shields.io/badge/Claude%20Code-Compatible-blue.svg)](https://claude.ai/code)
[![Windsurf Compatible](https://img.shields.io/badge/Windsurf-Compatible-green.svg)](https://codeium.com/windsurf)

> **Structured AI-powered development workflows for ticket-based software engineering**

Transform your development process with systematic, AI-assisted workflows that integrate planning, implementation, code review, and quality assurance into a seamless, documented process.

## Table of Contents

- [Why Use AI Agent Workflows?](#why-use-ai-agent-workflows)
- [Quick Start](#quick-start)
- [Prerequisites](#prerequisites)
- [How It Works](#how-it-works)
- [Installation](#installation)
- [Usage Examples](#usage-examples)
- [Workflow Phases](#workflow-phases)
- [Available Commands](#available-commands)
- [File Structure](#file-structure)
- [Troubleshooting](#troubleshooting)
- [Contributing](#contributing)
- [License](#license)

## Why Use AI Agent Workflows?

**Stop context switching. Start delivering.**

Traditional development often involves jumping between planning, coding, reviewing, and testing without proper documentation or systematic approach. This leads to:

- ❌ Lost context between development phases
- ❌ Inconsistent code quality and review processes  
- ❌ Missing documentation and decision rationale
- ❌ Inefficient handoffs between team members
- ❌ Repeated mistakes and forgotten lessons learned

**AI Agent Workflows solve this by providing:**

- ✅ **Systematic Documentation** - Every ticket maintains its own complete documentation trail
- ✅ **AI-Powered Efficiency** - Leverage Claude Code and Windsurf for intelligent automation
- ✅ **Quality Assurance** - Built-in code review and QA validation processes
- ✅ **Consistent Process** - Standardized workflows across all development work
- ✅ **Knowledge Retention** - Capture decisions, research, and lessons learned
- ✅ **Team Collaboration** - Clear handoff points and shared understanding

## Quick Start

Get started in 3 minutes:

```bash
# 1. Clone and install globally
git clone https://github.com/your-github-username/agent-workflows.git
cd agent-workflows
./install-global-workflows.sh

# 2. In any other project, link the global workflows
cp /path/to/agent-workflows/link-global-workflows.sh .
./link-global-workflows.sh

# 3. Create your first ticket
./create-ticket.sh PROJECT-123

# 3. Start development with AI assistance
# In Windsurf: Use planning workflows for requirements and research
# In Claude Code: Use /execute PROJECT-123 for implementation
```

## Prerequisites

### Required Tools
- **[Claude Code](https://claude.ai/code)** - AI-powered development environment
- **[Windsurf](https://codeium.com/windsurf)** - Code editor with AI planning capabilities
- **Git** - Version control system
- **Bash** - Shell environment (Linux/macOS/WSL)

### Optional but Recommended
- **[GitHub CLI](https://cli.github.com/)** - For pull request management
- **[Playwright](https://playwright.dev/)** - For end-to-end testing (QA phase)

### System Requirements
- Operating System: Linux, macOS, or Windows with WSL
- Node.js 18+ (if working with JavaScript/TypeScript projects)
- Git 2.20+
- Bash 4.0+

## How It Works

AI Agent Workflows follows a **4-phase development process** with dedicated tools for each phase:

```
📋 Planning → 🔧 Implementation → 👀 Review → ✅ QA
   Windsurf      Claude Code      Claude Code   Claude Code
```

Each ticket maintains its own directory with structured documentation, ensuring nothing is lost and everything is traceable.

### Core Concepts

1. **Ticket-Based Organization** - Each task gets its own directory with structured files
2. **Phase-Specific Tools** - Different AI tools optimized for different development phases  
3. **Living Documentation** - Files are updated throughout the development process
4. **AI Command Integration** - Custom commands that understand your project context

## Why Windsurf for Planning?

**The right tool for the right phase.**

While both Windsurf and Claude Code are powerful AI development tools, they excel in different areas. Here's why we strategically use each tool for specific phases:

### 🧠 Windsurf's Planning Advantages

**Local Codebase Intelligence**
- **Deep code indexing** - Windsurf maintains a comprehensive understanding of your entire codebase
- **Contextual awareness** - Better at understanding relationships between files, functions, and architecture
- **Efficient exploration** - Superior for browsing and analyzing existing code patterns

**Research & Analysis Optimized**
- **Plan mode** - Designed for systematic thinking without premature execution  
- **Multi-file analysis** - Excellent at understanding complex codebases and dependencies
- **Architecture comprehension** - Better at grasping high-level system design and integration points

**Collaborative Planning**
- **Interactive workflows** - Built-in workflows guide systematic requirements gathering
- **Documentation generation** - Optimized for creating comprehensive research and planning documents
- **Decision tracking** - Better at capturing and organizing planning decisions and rationale

Windsurf workflows are structured, repeatable processes that guide you through essential development activities such as requirements gathering, research, planning, and documenting decisions. Unlike simple checklists, Windsurf workflows are deeply integrated with your project’s context and codebase.

### ⚡ Claude Code's Implementation Advantages

**Execution Optimized**
- **Code modification focus** - Designed specifically for writing, editing, and refactoring code
- **Tool integration** - Superior integration with development tools (git, testing, linting)
- **Performance focus** - Optimized for rapid code changes and validation

**Implementation Workflow**
- **TDD support** - Better at following test-driven development practices
- **Systematic execution** - Excellent at methodically implementing planned changes
- **Quality assurance** - Built-in support for code review and testing workflows

### 🎯 Strategic Tool Alignment

This two-tool approach creates a more efficient workflow:

1. **Windsurf handles exploration** - Use when you need to understand, research, and plan
2. **Claude Code handles execution** - Use when you're ready to implement, test, and deploy
3. **Complementary strengths** - Each tool's capabilities enhance the other's effectiveness
4. **Context preservation** - Documentation bridges between tools, maintaining continuity

**Result:** You get the best of both worlds - thoughtful planning with efficient execution.

## Installation

### Step 1: Global Installation (Run Once)

First, install the workflows to a central location on your system. You only need to do this once.

```bash
# Clone the repository
git clone https://github.com/your-github-username/agent-workflows.git
cd agent-workflows

# Run the global installer
./install-global-workflows.sh
```

This script copies the workflows to `~/.windsurf/workflows` and `~/.claude/commands`.

### Step 2: Link to Your Projects (Run in Each Project)

To use the global workflows in a specific project, you need to link them. Navigate to your project's root directory and run:

```bash
# Copy the linking script to your project and run it
cp /path/to/agent-workflows/link-global-workflows.sh .
./link-global-workflows.sh
```

This creates symbolic links from the global directory to your project's local `.windsurf/workflows` and `.claude/commands` directories. It's safe to run this multiple times.

**That's it!** After linking, restart your editor, and the workflows will be available.

### Manual Installation

If you prefer manual setup:

```bash
# Windsurf workflows
mkdir -p ~/.windsurf/workflows
cp windsurf-workflows/* ~/.windsurf/workflows/

# Claude commands  
mkdir -p ~/.claude/commands
cp claude-commands/* ~/.claude/commands/
```



### Verification

After installation and configuration, verify everything is working:

```bash
# Check workflow files are in place
ls ~/.windsurf/workflows/
ls ~/.claude/commands/

# Test ticket creation
./create-ticket.sh TEST-001
ls TEST-001/
```

## Usage Examples

### Example 1: Feature Development

```bash
# Create ticket for new feature
./create-ticket.sh FEAT-456

# Phase 1: Planning (in Windsurf)
# - Use /requirements workflow to analyze requirements
# - Use /research workflow to analyze codebase  
# - Use /planning workflow to create implementation plan

# Phase 2: Implementation (in Claude Code)
/execute FEAT-456

# Phase 3: Review (in Claude Code, after creating PR)
/pr-review 123

# Phase 4: QA (in Claude Code)
/qa-check 123
```

### Example 2: Bug Fix

```bash
# Create ticket for bug fix
./create-ticket.sh BUG-789

# Quick combined planning (in Windsurf)
/project-planning BUG-789

# Implement fix (in Claude Code)
/execute BUG-789

# Address PR feedback (in Claude Code)
/address-pr-comments 124
```

### Example 3: Performance Optimization

```bash
# Create ticket for performance work
./create-ticket.sh PERF-456

# Planning and research (in Windsurf)
/research PERF-456
/planning PERF-456

# Performance analysis and optimization (in Claude Code)
/performance-audit PERF-456

# Validate improvements (in Claude Code)
/pr-review 125
/qa-check 125
```

### Example 4: Security Hardening

```bash
# Create security ticket
./create-ticket.sh SEC-123

# Security research (in Windsurf)
/research SEC-123

# Security analysis and fixes (in Claude Code)
/security-scan SEC-123

# Review and validation (in Claude Code)
/pr-review 126
/qa-check 126
```

### Example 5: Critical Hotfix

```bash
# Create hotfix ticket
./create-ticket.sh HOTFIX-789

# Emergency fix (in Claude Code - streamlined process)
/hotfix HOTFIX-789

# Fast validation and deployment
/pr-review 127
/qa-check 127
```

### Example 6: Code Refactoring

```bash
# Create refactoring ticket
./create-ticket.sh REFACTOR-321

# Refactoring planning (in Windsurf)
/planning REFACTOR-321

# Systematic refactoring (in Claude Code)
/refactor REFACTOR-321

# Quality validation (in Claude Code)
/pr-review 128
```

## Workflow Phases

### 1. 📋 Planning Phase
**Tool:** Windsurf (with planning workflows)

**Activities:**
- Requirements analysis and clarification
- Codebase research and impact analysis
- Implementation planning and architecture decisions
- Risk assessment and approach validation

**Outputs:**
- `[TICKET-ID].md` - Complete ticket description
- `research.md` - Technical findings and analysis
- `plan.md` - Detailed implementation approach

### 2. 🔧 Implementation Phase  
**Tool:** Claude Code (with `/execute` command)

**Activities:**
- Code implementation following TDD practices
- Integration with existing systems
- Performance optimization
- Documentation updates

**Outputs:**
- Implemented feature/fix
- Updated tests
- Updated ticket documentation

### 3. 👀 Review Phase
**Tool:** Claude Code (with `/pr-review` command)

**Activities:**
- Automated code quality analysis
- Security and performance review
- Best practices validation
- Documentation review

**Outputs:**
- `review.md` - Comprehensive review findings
- Actionable improvement suggestions

### 4. ✅ QA Phase
**Tool:** Claude Code (with `/qa-check` command)

**Activities:**
- Business logic validation
- User workflow testing
- Acceptance criteria verification
- Integration testing

**Outputs:**
- `qa.md` - Complete QA report
- Test coverage analysis
- Deployment readiness assessment

## Available Commands

### Windsurf Workflows
- `/requirements` - Requirements analysis and clarification
- `/research` - Codebase analysis and technical research
- `/planning` - Implementation planning and architecture
- `/project-planning` - Combined workflow for all planning phases
- `/address-pr-comments` - Handle pull request feedback

### Claude Code Commands

#### Core Development Workflow
- `/execute [TICKET-ID]` - Expert development agent for implementation
- `/pr-review [PR-NUMBER]` - Comprehensive code review and analysis
- `/qa-check [PR-NUMBER]` - Quality assurance validation

#### Lifecycle Management
- `/ticket-status [TICKET-ID]` - Get comprehensive ticket progress dashboard
- `/close-ticket [TICKET-ID]` - Complete ticket closure with final documentation
- `/hotfix [TICKET-ID]` - Fast-track critical bug fixes with streamlined workflow

#### Development Enhancement
- `/refactor [TICKET-ID]` - Systematic code refactoring with safety checks
- `/performance-audit [TICKET-ID]` - Analyze and optimize performance bottlenecks
- `/security-scan [TICKET-ID]` - Deep security analysis and vulnerability assessment

## File Structure

Each ticket creates a structured directory:

```
./[TICKET-ID]/
├── [TICKET-ID].md         # Main ticket description and requirements
├── research.md            # Technical research and codebase analysis
├── plan.md               # Implementation approach and architecture
├── review.md             # Code review findings and recommendations
├── qa.md                 # QA test results and validation report
├── CLOSURE.md            # Final closure documentation (when using /close-ticket)
├── refactor-log.md       # Refactoring execution log (when using /refactor)
├── performance-report.md # Performance analysis report (when using /performance-audit)
└── security-report.md    # Security assessment report (when using /security-scan)
```

### File Purposes

- **`[TICKET-ID].md`** - Central ticket documentation, updated throughout development
- **`research.md`** - Technical findings, affected components, integration points  
- **`plan.md`** - Implementation strategy, file changes, testing approach
- **`review.md`** - Code quality analysis, security considerations, improvements
- **`qa.md`** - Business logic validation, user workflow testing, deployment readiness
- **`CLOSURE.md`** - Complete ticket closure summary with lessons learned and metrics
- **`refactor-log.md`** - Detailed refactoring execution log with before/after metrics
- **`performance-report.md`** - Comprehensive performance analysis and optimization results
- **`security-report.md`** - Security vulnerability assessment and remediation documentation

## Troubleshooting

### Common Issues

**Q: Commands not found after installation**
```bash
# Restart your editors
# For Windsurf: Restart the application
# For Claude Code: Start a new session

# Verify installation
ls ~/.windsurf/workflows/ ~/.claude/commands/
```

**Q: Ticket creation fails**
```bash
# Check script permissions
chmod +x create-ticket.sh

# Verify current directory is writable
ls -la
```

**Q: Workflows not appearing in my project**

Did you run the linking script in your project's root directory? 

```bash
# From your project's root folder:
./link-global-workflows.sh
```

After linking, you must **restart your editor** (VS Code, etc.) for it to detect the new workflows.

**Q: Claude commands not working**
```bash
# Verify command files are properly formatted YAML
cat ~/.claude/commands/execute.yaml

# Check for syntax errors in YAML files
```

### Performance Tips

- Use workflows in **parallel** when possible (multiple Claude Code sessions)
- **Batch similar operations** within each phase for efficiency
- **Start with smaller tickets** to establish workflow patterns
- **Keep ticket directories organized** and clean up completed work

### Getting Help

- **Issues & Feature Requests**: [GitHub Issues](https://github.com/your-github-username/agent-workflows/issues)
- **Discussions**: [GitHub Discussions](https://github.com/your-github-username/agent-workflows/discussions)
- **Documentation**: This README and workflow files contain extensive documentation

## Contributing

We welcome contributions! Here's how to get started:

### Development Setup

```bash
# Fork and clone your fork
git clone https://github.com/your-username/agent-workflows.git
cd agent-workflows

# Create feature branch
git checkout -b feature/your-improvement

# Make your changes
# Test thoroughly with real tickets

# Submit pull request
```

### Guidelines

- **Test your changes** with actual development tickets
- **Update documentation** for any new features or changes
- **Follow existing patterns** in workflows and commands
- **Include examples** for new functionality

### Areas for Contribution

- Additional workflow templates
- Integration with other AI tools
- Performance improvements
- Documentation enhancements
- Testing frameworks integration
- New Claude Code commands for specialized workflows
- Enhanced security scanning integrations
- Performance monitoring and alerting improvements

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

Copyright (c) 2025 Taylor

---

**Ready to transform your development workflow?** [Get started now](#quick-start) or [explore the examples](#usage-examples).