---
title: Daily Solana Challenge README Builder
description: >
  Prompt to help generate a daily summary README for MLH 100 Days of Solana challenges. Provide the reference (challenge link or description) and the script/code file for the day. The agent will extract the requirements, summarize the solution, and produce a well-structured README section for that day's work.
arguments:
  - name: reference
    description: The challenge link or description for the day's task
  - name: codeFile
    description: The main code/script file for the day's solution
output:
  description: A markdown-formatted README section summarizing the challenge, approach, and key takeaways for the day.
---

# Daily Solana Challenge README Builder

Given a reference to the day's challenge (URL or description) and the main code file, generate a markdown summary for the README. The agent should:

- Read the output structure and style from previous README files in the project (if available)
- Automatically create and insert the output in the correct README file for the day
- The summary must include:
  - Challenge title and context
  - Steps taken to solve the challenge
  - Key takeaways and learnings
  - Any relevant resources or links
  - (Optional) Security or best practice notes

## Example invocation

reference: https://www.mlh.com/challenges/019daf61-bc52-ce71-962d-041cc6c9863d
codeFile: day-02/persistent-wallet.mjs

## Output

The agent will generate and insert a markdown section directly into the day's README file, following the style and structure of previous days' summaries.
