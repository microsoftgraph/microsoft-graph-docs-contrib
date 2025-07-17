---
title: Set employeeLeaveDateTime
description: Configure the employeeLeaveDateTime property for a user using Microsoft Graph.
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: Alexander.Filipin
ms.localizationpriority: medium
ms.subservice: entra-id-governance
ms.topic: how-to
ms.date: 01/13/2025
ms.custom: sfi-ga-blocked
#Customer intent: As a developer integrating with Microsoft Graph, I want programmatically configure the employeeLeaveDateTime property for a user, so that I can trigger scheduled "leaver" workflows using Lifecycle Workflows.
---

# Configure the employeeLeaveDateTime property for a user

This article describes how to configure the **employeeLeaveDateTime** attribute for a [user](/graph/api/resources/user?view=graph-rest-beta&preserve-view=true). This property can be used as a trigger for "leaver" workflows created using [Lifecycle Workflows](/graph/api/resources/identitygovernance-lifecycleworkflows-overview).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

|Permission type|Least privileged permissions|Higher privileged permissions|
|:---|:---|:---|
|Delegated (work or school account)|User.Read.All and User-LifeCycleInfo.ReadWrite.All|Not available.|
|Delegated (personal Microsoft account)|Not supported.|Not supported.|
|Application|User.Read.All and User-LifeCycleInfo.ReadWrite.All|Not available.|

For delegated scenarios, the admin must also have the Global Administrator [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json).

> [!NOTE]
> This information is best updated via automation by using either an HR provisioning, Microsoft Entra Connect, or custom sync solution. For more information about this process, see [How to synchronize attributes for lifecycle workflows](/entra/id-governance/how-to-lifecycle-workflow-sync-attributes).

## Set the employeeLeaveDateTime property

The following example configures September 30, 2022 at 23:59 as the date and time when the user will leave the organization. The request returns  `204 No Content` response code.

# [HTTP](#tab/http)

```http
PATCH https://graph.microsoft.com/v1.0/users/aaaaaaaa-bbbb-cccc-1111-222222222222

{
    "employeeLeaveDateTime": "2022-09-30T23:59:59Z"
}
```

# [PowerShell](#tab/powershell)

```powershell    
    Connect-MgGraph -Scopes "User.Read.All","User-LifeCycleInfo.ReadWrite.All"
    Select-MgProfile -Name "v1.0"

    $UserId = "528492ea-779a-4b59-b9a3-b3773ef6da6d"
    $employeeLeaveDateTime = "2022-09-30T23:59:59Z"
    
    Update-MgUser -UserId $UserId -EmployeeLeaveDateTime $employeeLeaveDateTime 

    $User = Get-MgUser -UserId $UserId -Property EmployeeLeaveDateTime
    $User.EmployeeLeaveDateTime
```

---

## Reset the employeeLeaveDateTime property back to null

The request returns a `204 No Content` response code.

```http
PATCH https://graph.microsoft.com/v1.0/users/aaaaaaaa-bbbb-cccc-1111-222222222222

{
    "employeeLeaveDateTime": null
}
```

## Related content

- [Lifecycle Workflows API overview](/graph/api/resources/identitygovernance-lifecycleworkflows-overview)
- [Tutorial: How to synchronize attributes for Lifecycle workflows](/entra/id-governance/how-to-lifecycle-workflow-sync-attributes)
