---
title: "numberAssignment: updateNumber"
description: "Update an existing telephone number with additional details"
author: "pavellatif"
ms.date: 07/23/2025
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
---

# numberAssignment: updateNumber

Namespace: microsoft.graph.teamsAdministration

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This method is used to update an existing number with additional attributes. Currently supported attributes are `locationId`, `networkSiteId`, and `reverseNumberLookupOptions`.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "teamsadministration-numberassignment-updatenumber-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/teamsadministration-numberassignment-updatenumber-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /admin/teams/telephoneNumberManagement/numberAssignments/updateNumber
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table lists the parameters that are required when you call this action.

|Parameter|Type|Description|
|:---|:---|:---|
|telephoneNumber|String|This is the telephone number intended to be assigned. (Mandatory parameter)|
|locationId|String|Indicates the emergency address identifier set on the phone number. Passing an empty string will clear the locationId, while passing `null` or not including the field will not update the value.|
|networkSiteId|String|Indicates the updated NetworkSiteId. Passing an empty string will clear the networkSiteId, while passing `null` or not including the field will not update the value.|
|reverseNumberLookupOptions|String collection|This parameter is used to control the behavior of reverse number lookup (RNL) for a phone number. When RNL contains `skipInternalVoip`, an internal call to this phone number will not attempt to pass through internal VoIP via reverse number lookup in Microsoft Teams. Instead, the call will be established through external PSTN connectivity directly.|

## Response

If successful, this method returns a `200 OK` response code.

## Examples

### Example 1: Update Location Id

#### Example 1 Request
<!-- {
  "blockType": "request",
  "name": "post_updateNumber",
}
-->
``` http
POST https://graph.microsoft.com/beta/admin/teams/telephoneNumberManagement/numberAssignments/updateNumber
Content-Type: application/json

{
  "telephoneNumber": "+12061234567",
  "locationId": "93cb8a70-b4af-41df-9928-d07607e21776",
}
```

#### Example 1 Response

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.teamsAdministration.telephoneNumberManagement)"
}
-->
``` http
200 OK
```

### Example 2: Update Network Site Id

#### Example 2 Request
<!-- {
  "blockType": "request",
  "name": "post_updateNumber",
}
-->
``` http
POST https://graph.microsoft.com/beta/admin/teams/telephoneNumberManagement/numberAssignments/updateNumber
Content-Type: application/json
{
  "telephoneNumber": "+12061234567",
  "networkSiteId": "fff21455-0f84-4a6b-babd-0a9b46971a62",
}
```

#### Example 2 Response

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.teamsAdministration.telephoneNumberManagement)"
}
-->
``` http
200 OK
```

### Example 3: Update Reverse Number Lookup Options

#### Example 3 Request
<!-- {
  "blockType": "request",
  "name": "post_updateNumber",
}
-->
``` http
POST https://graph.microsoft.com/beta/admin/teams/telephoneNumberManagement/numberAssignments/updateNumber
Content-Type: application/json
{
  "telephoneNumber": "+12061234567",
  "reverseNumberLookupOptions": [ “skipInternalVoip” ],
}
```

#### Example 3 Response

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.teamsAdministration.telephoneNumberManagement)"
}
-->
``` http
200 OK
```

### Example 4: Clear Location Id

#### Example 4 Request
<!-- {
  "blockType": "request",
  "name": "post_updateNumber",
}
-->
``` http
POST https://graph.microsoft.com/beta/admin/teams/telephoneNumberManagement/numberAssignments/updateNumber
Content-Type: application/json
{
  "telephoneNumber": "+12061234567",
  "locationId": "",
}
```

#### Example 4 Response

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.teamsAdministration.telephoneNumberManagement)"
}
-->
``` http
200 OK
```
