---
title: "States, transitions, and limitations for assignments"
description: "Learn about the changes in the assignment states during the process flow and which education APIs in Microsoft Graph are involved."
ms.localizationpriority: medium
author: "cristobal-buenrostro"
ms.prod: "education"
doc_type: conceptualPageType
---

# States, transitions, and limitations for assignments in Microsoft Graph

Assignments and submissions are an important part in the interaction between teachers and students' actions. This article describes the changes in the assignment and submission states during the process flow and which education APIs in Microsoft Graph are involved.

## Assignment states and transitions

An assignment represents a task or unit of work assigned to a student or team members in a class as part of their study. Only teachers or team owners can create, copy, or schedule assignments. These actions have an impact on assignment states. The following table lists the assignment states and the APIs that are available to change the state. 

| State | Description | REST API call | Features available to edit |
|:--|:--|:--|:--|
| Draft | Initial status when a new assignment is created or copied from an existing assignment. | `POST /education/classes/{id}/assignments` | Resources, categories, rubrics |
| Published | A background processing state  when the assignment is distributed to each student assigned. | `POST /education/classes/{id}/assignments/{id}/publish` | |
| Scheduled | Status when the teacher scheduled the assignment to publish in a future time. | `PATCH /education/classes/{id}/assignments/{id}`<br/>`POST /education/classes/{id}/assignments/{id}/publish` | Resources, categories, rubrics |
| Assigned | After finishing the publish, the assignment is moved to Assigned state and is available for the students, or the assignment is active again. | `POST /education/classes/{id}/assignments/{id}/publish`<br/>`POST /education/classes/{id}/assignments/{id}/activate` | Submissions |
| Pending | Background processing status when a new assignment is being copied from an existing one. | `POST /education/classes/{id}/assignments/{id}/copy`<br/>`PATCH /education/classes/{id}/assignments/{id}` | |
| Inactive | The assignment has no further action items for teachers and students. | `POST /education/classes/{id}/assignments/{id}/deactivate` | |

The following diagram shows the state transitions that can occur for assignments.

![Assignment states transitions diagram](images/states-transitions/diagram-assignments.PNG)

### How to verify that an assignment is published

The caller must use the [GET assignment](/graph/api/educationassignment-get) operation to check the current assignment status and verify that the publishing process succeeded.

### Assignment state transitions based on the allowed actions

| Current assignment state | New action | New state |
|:--|:--|:--|
| Draft | The teacher schedules the assignment | Scheduled |
| Draft | Publish | Published |
| Draft | Edited | Draft |
| Draft | Discarded | |
| Published | Publish finished | Assigned |
| Published | Publish failed | Draft |
| Published | Discarded | |
| Scheduled | Reach due date | Published |
| Scheduled | Cancel schedule | Draft |
| Scheduled | Reschedule | Scheduled |
| Assigned | Discarded | |
| Assigned | Deactivated | Inactive |
| Pending |	Copy completed | Draft |
| Pending | Discarded | |
| Inactive | Activated | Assigned |

> [!NOTE]
> Any action and state transition not listed in the table is not allowed.

### Sync vs. async operations over assignments API calls

The following table mentions the API calls that affect the assignment state and the operation type.

Synchronous operations are performed one at a time and only when one operation is completed can the following operation start, and the result is returned until the last operation is completed. With asynchronous operations, the operation starts and another operation can run before the previous one finishes. The asynchronous operation performs some background activity, and the caller must be polling to get the result.

| API | Sync or async | Mechanism to get latest state |
|:--|:--|:--|
| `DELETE /education/classes/{id}/assignments/{id}` | Async | Poll |
| `POST /education/classes/{id}/assignments/{id}/publish` | Async | Poll |
| `PATCH /education/classes/{id}/assignments/{id}` | Async | Poll |
| `POST /education/classes/{id}/assignments` | Async | Poll |
| `POST /education/classes/{id}/assignments/{id}/deactivate` | Async | Poll |
| `POST /education/classes/{id}/assignments/{id}/activate` | Async | Poll |

### Limits

The following limits apply to all API calls:

* The maximum number of assignments and submissions resources are 10 for the teacher and plus 10 for the student.
* The maximum size allowed for resources is 50 MB overall or 10 resources.
* Throttling limits apply; for details, see [Microsoft Graph throttling guidance](/graph/throttling).

## See also

- [States, transitions, and limitations for submissions](submissions-states-transition)
