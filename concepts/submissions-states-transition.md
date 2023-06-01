---
title: "States, transitions, and limitations for submissions"
description: "Learn about the transitions that occur in the submission states throughout the process flow and which education APIs in Microsoft Graph are involved."
ms.localizationpriority: medium
author: "cristobal-buenrostro"
ms.prod: "education"
doc_type: conceptualPageType
---

# States, transitions, and limitations for submissions in Microsoft Graph

Submissions are an important part in the interaction between teachers' and students' actions. about the changes in the submission states during the process flow and which education APIs in Microsoft Graph are involved.

## Submission states and transitions

A submission represents the resources that an individual or group turns in for an assignment. Submissions are owned by an assignment and are automatically created when an assignment is published.

The status is a read-only property in the submission. It changes based on the actions of students and teachers.

| State | Description | REST API call |
|:--|:--|:--|
| Working |	Initial state after the submission is created. | `POST /education/classes/{id}/assignments`<br/>`POST /education/classes/{id}/assignments/{id}/submissions/{id}/unsubmit` |
| Submitted	| The state after the student turns in the assignment. | `POST /education/classes/{id}/assignments/{id}/submissions/{id}/submit` |
| Returned | The state after the teacher has returned an assignment to the student. | `POST /education/classes/{id}/assignments/{id}/submissions/{id}/return` |
| Reassigned | The state after the teacher has returned the assignment to the student for revision. | `POST /education/classes/{id}/assignments/{id}/submissions/{id}/reassign` |

The following diagram shows the state transition flow.

![Submission states transitions diagram](images/states-transitions/diagram-submissions.PNG)

### Submission state transitions based on allowed actions

| Current submission state | New action | New state |
|:--|:--|:--|
| Working |	Turn in	| Submitted |
| Working |	Return for revision	| Reassigned |
| Working |	Return | Returned |
| Submitted	| Undo Turn in | Working |
| Submitted | Return | Returned |
| Submitted | Return for revision | Reassigned |
| Returned | Turn in | Submitted |
| Returned | Return | Returned |
| Returned | Return for revision | Reassigned |
| Reassigned | Turn in | Submitted |
| Reassigned | Return | Returned |
| Reassigned | Return for revision | Reassigned |

> [!NOTE]
> Any action and state transition not listed in the table is not allowed.

### Sync vs. async operations over submissions API calls

The following table lists the API calls that affect the submission state and the operation type.

In this case, all the calls are asynchronous, which means the operation starts, and another operation can begin before the first one finishes. The asynchronous operation performs some background activity, and the caller must be polling to get the result.  

| API | Sync or async | Mechanism to get latest state |
|:--|:--|:--|
| `POST /education/classes/{id}/assignments/{id}/submissions/{id}/submit` | Async | Poll |
| `POST /education/classes/{id}/assignments/{id}/submissions/{id}/unsubmit` | Async | Poll |
| `POST /education/classes/{id}/assignments/{id}/submissions/{id}/return` | Async | Poll |
| `POST /education/classes/{id}/assignments/{id}/submissions/{id}/reassign` | Async | Poll |

### Limits

The following limits apply to all API calls:

* The maximum number of submission resources are 10 for the student.
* The maximum size allowed for resources is 500 MB.
* Throttling limits apply; for details, see [Microsoft Graph throttling guidance](/graph/throttling).

## See also

- [States, transitions, and limitations for assignments](./assignments-states-transition.md)
