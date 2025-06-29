#!/bin/bash

# Check if ticket number is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <TICKET-ID>"
    echo "Example: $0 GLU-2234"
    exit 1
fi

TICKET_ID=$1
TICKET_DIR="./$TICKET_ID"

# Check if directory already exists
if [ -d "$TICKET_DIR" ]; then
    echo "Error: Directory $TICKET_DIR already exists"
    exit 1
fi

# Create ticket directory
mkdir -p "$TICKET_DIR"

# Create main ticket file
cat > "$TICKET_DIR/$TICKET_ID.md" << 'EOF'
# Ticket: TICKET_ID

## Description
[Brief description of the ticket/task]

## User Story
As a [type of user]
I want [some goal]
So that [some reason]

## Acceptance Criteria
- [ ] Criterion 1
- [ ] Criterion 2
- [ ] Criterion 3

## Technical Requirements
- [List any specific technical requirements]

## Dependencies
- [List any dependencies or blockers]

## Progress Updates
- [Date] - Initial ticket created
EOF

# Replace TICKET_ID placeholder with actual ticket ID
sed -i "s/TICKET_ID/$TICKET_ID/g" "$TICKET_DIR/$TICKET_ID.md"

# Create research.md
cat > "$TICKET_DIR/research.md" << 'EOF'
# Research Findings for TICKET_ID

## Codebase Analysis

### Affected Components
- [List components that will be modified]

### Current Implementation
[Describe how the current system works]

### Integration Points
- [List systems/modules this will integrate with]

## Technical Considerations

### Architecture Impact
[Describe any architectural implications]

### Performance Considerations
[Note any performance impacts]

### Security Considerations
[Note any security implications]

## References
- [Link to relevant documentation]
- [Link to similar implementations]

## Open Questions
- [ ] Question 1
- [ ] Question 2
EOF

# Replace TICKET_ID placeholder
sed -i "s/TICKET_ID/$TICKET_ID/g" "$TICKET_DIR/research.md"

# Create plan.md
cat > "$TICKET_DIR/plan.md" << 'EOF'
# Implementation Plan for TICKET_ID

## Overview
[High-level approach to implementing this ticket]

## Implementation Steps

### Step 1: [Description]
- Files to modify:
  - `path/to/file1.ext`
  - `path/to/file2.ext`
- Changes needed:
  - [Specific change 1]
  - [Specific change 2]

### Step 2: [Description]
- Files to modify:
  - `path/to/file3.ext`
- Changes needed:
  - [Specific change]

### Step 3: Testing
- Unit tests to add/modify:
  - [ ] Test case 1
  - [ ] Test case 2
- Integration tests:
  - [ ] Test scenario 1

## Risk Assessment
- **Risk 1**: [Description]
  - Mitigation: [How to handle]
- **Risk 2**: [Description]
  - Mitigation: [How to handle]

## Rollback Plan
[Steps to rollback if needed]
EOF

# Replace TICKET_ID placeholder
sed -i "s/TICKET_ID/$TICKET_ID/g" "$TICKET_DIR/plan.md"

# Create review.md
cat > "$TICKET_DIR/review.md" << 'EOF'
# Code Review Findings for TICKET_ID

## Review Date: [Date]
## Reviewer: [Name]

## Summary
- [ ] Code follows project conventions
- [ ] Tests are comprehensive
- [ ] Documentation is updated
- [ ] No security vulnerabilities identified
- [ ] Performance impact is acceptable

## Findings

### Critical Issues
- [ ] [Issue description and location]

### Major Issues
- [ ] [Issue description and location]

### Minor Issues
- [ ] [Issue description and location]

### Suggestions
- [Improvement suggestion 1]
- [Improvement suggestion 2]

## Static Analysis Results
- Linting: [Pass/Fail - details]
- Type checking: [Pass/Fail - details]
- Security scan: [Pass/Fail - details]

## Test Coverage
- Current coverage: [X%]
- New code coverage: [X%]
- Uncovered areas: [List]

## Action Items
- [ ] Address critical issues
- [ ] Address major issues
- [ ] Consider implementing suggestions
EOF

# Replace TICKET_ID placeholder
sed -i "s/TICKET_ID/$TICKET_ID/g" "$TICKET_DIR/review.md"

# Create qa.md
cat > "$TICKET_DIR/qa.md" << 'EOF'
# QA Test Results for TICKET_ID

## Test Date: [Date]
## Tester: [Name]
## Environment: [Dev/Staging/Prod]

## Test Summary
- Total Tests: [X]
- Passed: [X]
- Failed: [X]
- Blocked: [X]

## Functional Testing

### Test Case 1: [Description]
- **Steps**:
  1. Step 1
  2. Step 2
- **Expected Result**: [What should happen]
- **Actual Result**: [What actually happened]
- **Status**: [Pass/Fail/Blocked]

### Test Case 2: [Description]
- **Steps**:
  1. Step 1
  2. Step 2
- **Expected Result**: [What should happen]
- **Actual Result**: [What actually happened]
- **Status**: [Pass/Fail/Blocked]

## Non-Functional Testing

### Performance Testing
- Load time: [X seconds]
- Memory usage: [X MB]
- CPU usage: [X%]

### Security Testing
- [ ] Input validation tested
- [ ] Authorization tested
- [ ] No sensitive data exposed

## Regression Testing
- [ ] Existing functionality unaffected
- [ ] No new bugs introduced

## Issues Found
1. **Issue**: [Description]
   - **Severity**: [Critical/Major/Minor]
   - **Steps to Reproduce**: [Steps]
   - **Status**: [Open/Fixed/Deferred]

## Recommendations
- [Recommendation 1]
- [Recommendation 2]

## Sign-off
- [ ] All acceptance criteria met
- [ ] No critical issues remain
- [ ] Ready for production
EOF

# Replace TICKET_ID placeholder
sed -i "s/TICKET_ID/$TICKET_ID/g" "$TICKET_DIR/qa.md"

# Make the script executable
chmod +x "$0"

echo "✅ Created ticket directory structure for $TICKET_ID"
echo ""
echo "📁 $TICKET_DIR/"
echo "  ├── $TICKET_ID.md      # Main ticket/task description"
echo "  ├── research.md        # Research findings and analysis"
echo "  ├── plan.md           # Implementation plan"
echo "  ├── review.md         # Code review findings"
echo "  └── qa.md             # QA test results and issues"
echo ""
echo "Next steps:"
echo "1. Fill in the ticket details in $TICKET_DIR/$TICKET_ID.md"
echo "2. Use Windsurf plan mode to complete research and planning"
echo "3. Execute implementation with: /execute $TICKET_ID"