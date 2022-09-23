---
author: "AlexFilipin"
ms.localizationpriority: high
ms.prod: "governance"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

<!-- This include file is currently referenced by the following docs:
1. https://learn.microsoft.com/en-us/graph/api/resources/identitygovernance-lifecycleworkflows-overview
2. https://learn.microsoft.com/en-us/graph/api/resources/identitygovernance-task
-->

| Task description                  | Task definition ID                   | Supported Lifecycle Workflows categories |
|-----------------------------------|--------------------------------------|------------------------------------------|
| Generate TAP And Send Email       | 1b555e50-7f65-41d5-b514-5894a026d10d | Joiner                                   |
| Enable User Account               | 6fc52c9d-398b-4305-9763-15f42c1676fc | Joiner, Leaver                           |
| Send Welcome Email                | 70b29d51-b59a-4773-9280-8841dfd3f2ea | Joiner                                   |
| Add User To Groups                | 22085229-5809-45e8-97fd-270d28d66910 | Joiner, Leaver                           |
| Remove user from all groups       | b3a31406-2a15-4c9a-b25b-a658fa5f07fc | Leaver                                   |
| Remove user from all Teams        | 81f7b200-2816-4b3b-8c5d-dc556f07b024 | Leaver                                   |
| Delete User Account               | 8d18588d-9ad3-4c0f-99d0-ec215f0e3dff | Leaver                                   |
| Remove user from selected groups  | 1953a66c-751c-45e5-8bfe-01462c70da3c | Joiner, Leaver                           |
| Remove user from selected Teams   | 06aa7acb-01af-4824-8899-b14e5ed788d6 | Joiner, Leaver                           |
| Disable User Account              | 1dfdfcc7-52fa-4c2e-bf3a-e3919cc12950 | Joiner, Leaver                           |
| Remove user from all groups       | b3a31406-2a15-4c9a-b25b-a658fa5f07fc | Leaver                                   |
| Remove all licenses for user      | 8fa97d28-3e52-4985-b3a9-a1126f9b8b4e | Leaver                                   |
| Run a Custom Task Extension       | 4262b724-8dba-4fad-afc3-43fcbb497a0e | Joiner, Leaver                           |
| Send email before user's last day | 52853a3e-f4e5-4eb8-bb24-1ac09a1da935 | Leaver                                   |
| Send email on user’s last day     | 9c0a1eaf-5bda-4392-9d9e-6e155bb57411 | Leaver                                   |
| Send email after user’s last day  | 6f22ddd4-b3a5-47a4-a846-0d7c201a49ce | Leaver                                   |
