---
title: "Teacher and student actions for assignments and submissions"
description: "Learn how to get the assignments and related submissions for Teachers and Students with state transition rules."
ms.localizationpriority: medium
author: "AshwaniBansal1"
ms.prod: "education"
doc_type: conceptualPageType
---

# Teacher and student actions for assignments and submissions

This article describes student and teacher roles for assignments and submissions state transitions, and related transition rules.

## Get all the assignments and their respective submissions that belong to a specific student

Make the following request to get the student's actions:

`me/assignments?$expand=submissions` with delegated permissions, or `users/id/assignments?$expand=submissions` for application permissions.

See the code sample for a student account with [Education assignment using Microsoft Graph SDK](https://github.com/microsoft/edu-assignments-graph-sdk/blob/main/samples/csharp/MicrosoftEduGraphSamples/Workflows/AssignmentWorkflow.cs#L62)

> [!NOTE]
> For student roles, the isTeacher parameter needs to be set to false.

## Get all the assignments for teacher and then submissions for each assignment

Make the following request to get the teacher's actions:

`me/assignments` or `users/id/assignments` to get the assignments belonging to a teacher.
For each of the assignments, use `classses/id/assignments/id/submissions` to get the submissions status (one assignment will contain n number of submissions, where n is the number of students. It can be a single student, a group of students or the entire class).

See the code sample for a teacher account with [Education assignment using Microsoft Graph SDK](https://github.com/microsoft/edu-assignments-graph-sdk/blob/main/samples/csharp/MicrosoftEduGraphSamples/Workflows/AssignmentWorkflow.cs#L62).

For a student, an assignment is actionable if the corresponding submission is in a *working*, *returned* or *reassigned* state. For a teacher, an assignment is actionable if any of the submissions of that assignment are in a *submitted* state.

## State transition rules

The following state transition rules are applicable for both student and teacher roles: 

* A student *turns in*, and teacher *returns* or *returns for revision*.
* A teacher returns submissions.
* A student can *turn in* the assignment only when the submission is in *working* or *reassigned* state.
* The *return for revision* action makes the submission state as *reassigned*.

## See also

- [States, transitions, and limitations for assignments](./assignments-states-transition.md)
- [States, transitions, and limitations for submissions](./submissions-states-transition.md)
