---
title: "State transiton for Student and Teacher role"
description: "Learn about on how to get the assignments and related submission for Teachers and Students with state transition rules"
ms.localizationpriority: medium
author: "AshwaniBansal1"
ms.prod: "education"
doc_type: conceptualPageType
---

# State transiton for Student and Teacher role

This article describes student and teacher roles for the assignment and submission state transition and related transition rules.

## Get all the assignmets and their corresponding submission belonging to the student

Use the following call for the student action:

`me/assignments?$expand=submissions` with a Delegated Scope, or `users/id/assignments?$expand=submissions` for Application scope.

Code sample for student account with [Education assignment using Microsoft Graph SDK](https://github.com/microsoft/edu-assignments-graph-sdk/blob/main/samples/csharp/MicrosoftEduGraphSamples/Workflows/AssignmentWorkflow.cs#L62)

> [!NOTE]
> For student account isTeacher parameter needs to be set to false.

## Get all the assignmets for teacher and then submissions for each assignment

Use the following call for the teacher action:

`me/assignments` or `users/id/assignments` to get the assignments belonging to a teacher.
Then, for each of the assignments use `classses/id/assignments/id/submissions` to get the submission status (one assignment will contain n number of submissions, where n is the class size) .

Code sample for teacher account with [Education assignment using Microsoft Graph SDK](https://github.com/microsoft/edu-assignments-graph-sdk/blob/main/samples/csharp/MicrosoftEduGraphSamples/Workflows/AssignmentWorkflow.cs#L62)

For Student, an assignment is actionable if the corresponding submission is in "Working", "Returned" or "Reassigned" state. For Teacher, an assignment is actionable if any of the submissions of that assignment are in "Submitted" state.

## State transition rules

The following state transition rules are applicable for student and teacher:

* Student "turns in", and Teacher "returns" or "returns for revision".
* Teacher can return the same assignment any number of times.
* Student can "turn in" the assignment only when the submission is in "working" or "reassigned" state.
* "Return for Revision" action makes the submission state as "reassigned".

## See also

- [States, transitions, and limitations for assignments](/graph/assignments-states-transition)
- [States, transitions, and limitations for submissions](/graph/submissions-states-transition)
