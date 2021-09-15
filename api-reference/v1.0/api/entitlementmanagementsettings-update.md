---
title: "Update entitlementManagementSettings"
description: "Update a entitlementManagementSettings object to change one or more of its properties."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---
# Update entitlementManagementSettings

Namespace: microsoft.graph


Update an existing [entitlementManagementSettings](../resources/entitlementmanagementsettings.md) object to change one or more of its properties.


## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type                        | Permissions (from least to most privileged)              |
|:--------------------------------------|:---------------------------------------------------------|
|Delegated (work or school account)     | EntitlementManagement.ReadWrite.All |
|Delegated (personal Microsoft account) | Not supported. |
|Application                            | EntitlementManagement.ReadWrite.All |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /identityGovernance/entitlementManagement/settings
```
## Request headers
| Name         | Description |
|:-------------|:------------|
| Authorization | Bearer \{token\}. Required. |
| Content-Type  | application/json. Required. |

## Request body
In the request body, supply a JSON representation of the [entitlementManagementSettings](../resources/entitlementmanagementsettings.md) object.

The following table shows the properties that are required when you update the [entitlementManagementSettings](../resources/entitlementmanagementsettings.md).

|Property|Type|Description|
|:---|:---|:---|
|externalUserLifecycleAction|accessPackageExternalUserLifecycleAction|Automatic action that the service should take when an external user's last access package assignment is removed. The possible values are: `none`, `blockSignIn`, `blockSignInAndDelete`, `unknownFutureValue`.
|durationUntilExternalUserDeletedAfterBlocked|Duration|If **externalUserLifecycleAction** is `blockSignInAndDelete`, the duration, typically a number of days, after an external user is blocked from sign in before their account is deleted.



## Response
If successful, this method returns a `204 No Content` response code.


