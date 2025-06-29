---
description: Workflow for addressing pull request comments and feedback
---

# Address Pull Request Comments

This workflow guides you through systematically addressing comments and feedback received on your pull request (PR).

## Steps

1. **Review All Comments**
   - Open your PR and gather all comments in one place
   - Categorize comments by type: 
     - Code style/formatting
     - Logic/functionality
     - Architecture/design
     - Tests/coverage
     - Documentation
     - Performance
     - Security
   - Prioritize comments based on importance and complexity

2. **Understand Each Comment**
   - For each comment, ensure you fully understand the feedback
   - Ask clarifying questions if any comment is ambiguous
   - Research any suggested patterns or approaches you're unfamiliar with
   - Consider the rationale behind each comment

3. **Create an Action Plan**
   - Make a checklist of all changes needed
   - Group related changes together
   - Decide which comments to address and which to discuss further
   - Estimate effort required for each change
   - Plan the order of addressing comments

4. **Make Code Changes**
   - Address simple formatting and style issues first
   - Make one logical change at a time
   - Run tests after each significant change
   - Document any unexpected challenges or side effects
   - Ensure changes align with project conventions

5. **Review Your Changes**
   - Double-check that all requested changes are addressed
   - Perform a self-review of your updated code
   - Ensure no new issues were introduced
   - Run linters and tests locally

6. **User Review Before Commit**
   - Present all proposed changes to the user for review
   - Explain the rationale behind each change
   - Highlight any areas where alternative approaches were considered
   - Wait for explicit user approval before proceeding
   - Make any additional adjustments based on user feedback

7. **Document Responses**
   - Respond to each comment indicating how it was addressed
   - For comments not addressed, explain your reasoning
   - Reference specific commits when applicable
   - Ask for clarification if you're unsure about a solution

8. **Commit and Push Changes**
   - Once user approval is received, commit the changes
   - Use clear and descriptive commit messages
   - Push your changes to the PR branch
   - Update the PR description if necessary
   - Request another review from relevant reviewers

9. **Follow Up**
   - Monitor the PR for additional feedback
   - Be prepared to discuss trade-offs in your approach
   - Address any remaining concerns promptly
   - Document lessons learned for future PRs

Upon completion of this workflow, you should have:
1. Addressed all PR feedback systematically
2. Improved code quality based on peer input
3. Documented rationale for your implementation decisions
4. Moved your PR closer to approval and merging
