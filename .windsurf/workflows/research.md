---
description: Research Workflow
---

# Research Workflow

This workflow guides you through conducting research for a ticket/task to gather all necessary technical information before proceeding with detailed planning.

## Steps

1. **Review Requirements Analysis**
   - Open and review the ticket description file (`[TICKET-ID].md`)
   - Review any questions or missing information identified during requirements analysis
   - Ensure you have a clear understanding of what needs to be researched

2. **Analyze the Codebase**
   - Use code search to identify components affected by the task
   - Examine existing implementations of similar functionality
   - Trace through relevant code execution paths
   - Identify key classes, functions, and interfaces involved

3. **Research External Tools and Libraries**
   - If applicable, use GitHub Context (https://github.com/upstash/context7)
   - Use Perplexity MCP if further research is needed
   - Document APIs, interfaces, and limitations of external dependencies

4. **Identify Integration Points**
   - Map out how the proposed changes will integrate with existing code
   - Identify potential breaking changes or compatibility issues
   - Note any API contracts that must be maintained

5. **Explore Technical Approaches**
   - Research different implementation approaches
   - Compare alternatives with pros and cons of each
   - Identify best practices for the specific task

6. **Document Findings**
   - Create or update `research.md` with comprehensive findings
   - Include:
     - Overview of affected components
     - Key code references (files, classes, functions)
     - Technical approaches considered
     - External resources or references
     - Potential technical challenges
     - Code snippets or examples where helpful

7. **Prepare for Planning Phase**
   - Summarize key findings relevant to implementation planning
   - Identify any remaining technical questions
   - Outline constraints and considerations for the planning phase

Upon completion of this workflow, you should have:
1. A thorough understanding of the technical landscape
2. Documented research findings in `research.md`
3. Key information needed to proceed with detailed planning
