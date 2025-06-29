---
description: Complete Project Planning Process
---

# Project Planning Process

This workflow guides you through the complete planning process for a ticket/task, linking together the Requirements Analysis, Research, and Planning phases into a cohesive workflow.

## Phase 1: Requirements Analysis

### Steps

1. **Locate and Review the Ticket Description**
   - Navigate to the ticket folder (`./[TICKET-ID]/`)
   - Open and review the main ticket description file (`[TICKET-ID].md`)
   - Identify key requirements, acceptance criteria, and any constraints

2. **Analyze Missing Information**
   - Create a list of any unclear requirements or missing details
   - Note questions that need clarification from stakeholders
   - Identify potential edge cases that aren't addressed in the requirements

3. **Gather Additional Information**
   - Prepare questions for stakeholders based on your analysis
   - Document answers and clarifications received
   - Update your understanding of requirements based on new information

4. **Update Documentation**
   - Update the ticket description file with any new information
   - Document any decisions made during the analysis
   - Ensure all requirements are clear, specific, and testable

## Phase 2: Research

### Steps

1. **Analyze the Codebase**
   - Use code search to identify components affected by the task
   - Examine existing implementations of similar functionality
   - Identify key classes, functions, and interfaces involved

2. **Research External Tools and Libraries**
   - If applicable, use GitHub Context (https://github.com/upstash/context7)
   - Use Perplexity MCP if further research is needed
   - Document APIs, interfaces, and limitations of external dependencies

3. **Identify Integration Points**
   - Map out how the proposed changes will integrate with existing code
   - Identify potential breaking changes or compatibility issues
   - Note any API contracts that must be maintained

4. **Explore Technical Approaches**
   - Research different implementation approaches
   - Compare alternatives with pros and cons of each
   - Identify best practices for the specific task

5. **Document Findings**
   - Create or update `research.md` with comprehensive findings
   - Include affected components, key code references, and technical approaches

## Phase 3: Planning

### Steps

1. **Define Implementation Scope**
   - Clearly define what is in-scope and out-of-scope for this implementation
   - Identify specific features or functionality to be delivered
   - Note any constraints or limitations to acknowledge

2. **Design Technical Approach**
   - Choose an implementation approach from the options identified during research
   - Document the technical architecture or design patterns to be used
   - Create diagrams or visual aids if helpful for understanding

3. **Map Required Changes**
   - List all files that will need to be modified
   - Identify new files or components that need to be created
   - Document APIs that will be affected or created
   - Note any database changes or migrations needed

4. **Develop Implementation Steps**
   - Break down the implementation into sequential, manageable steps
   - Provide a suggested order of operations
   - Consider dependencies between different parts of the implementation

5. **Identify Potential Risks**
   - Highlight areas of technical complexity or uncertainty
   - Identify potential performance impacts
   - Note any security considerations
   - Consider backward compatibility issues

6. **Define Testing Strategy**
   - Outline unit test requirements
   - Plan for integration testing needs
   - Identify any specialized testing tools or approaches needed

7. **Document the Plan**
   - Create or update `plan.md` with all planning information
   - Include approach, implementation steps, files to modify, risks, and testing approach

## Transition to Execution

Upon completion of all three phases, you should have:

1. A complete understanding of the requirements in the ticket description
2. Comprehensive research findings in `research.md`
3. A detailed implementation plan in `plan.md`
4. Clear guidance ready for the execution phase

The next step would be to proceed to the Execution Phase using the Claude Code tool:
```bash
claude-code -c execute [TICKET-ID]
```
