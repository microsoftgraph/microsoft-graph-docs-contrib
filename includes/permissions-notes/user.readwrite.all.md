---
ms.localizationpriority: high
---

<!-- markdownlint-disable MD002 MD041 -->

The *User.ReadWrite.All* delegated and application permissions allow the app to update all the declared properties for a user's work or school account except for their **passwordProfile** and **employeeLeaveDateTime**.

Updating sensitive properties is only allowed on non-admin users and users with lesser-privileged admin roles as indicated in [Who can perform sensitive actions](/graph/api/resources/users?view=graph-rest-1.0#who-can-perform-sensitive-actions).