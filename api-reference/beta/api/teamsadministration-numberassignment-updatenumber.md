---
title: "numberAssignment: updateNumber"
description: "Update an existing telephone number with optional details"
author: "pavellatif"
ms.date: 07/23/2025
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
---

# numberAssignment: updateNumber

Namespace: microsoft.graph.teamsAdministration

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This method is used to update an existing number with optional attributes. Currently supported attributes are `locationId`, `networkSiteId`, and `reverseNumberLookupOptions`.

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
|telephoneNumber|String|Mandatory. The telephone number intended to be assigned.|
|locationId|String|Indicates the emergency address identifier set on the phone number. Passing an empty string clears the locationId, while passing `null` or not including the field preserves the existing value.|
|networkSiteId|String|Indicates the updated networkSiteId. Use an empty string to clear the existing networkSiteId, or use `null`/omit the field to preserve the existing value.|
|reverseNumberLookupOptions|String collection|This parameter is used to control the behavior of reverse number lookup (RNL) for a phone number. When RNL contains `skipInternalVoip`, an internal call to this phone number doesn't attempt to pass through internal VoIP via reverse number lookup in Microsoft Teams. Instead, the call establishes through external Public Switched Telephone Network (PSTN) connectivity directly.|

## Response

If successful, this method returns a `200 OK` response code.

## Examples

### Example 1: Update location ID

#### Request

The following example shows a request to update `locationId` of a telephone number.
<!-- {
  "blockType": "request",
  "name": "post_updateNumber1",
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

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
```

### Example 2: Update network site ID

#### Request

The following example shows a request to update `networkSiteId` of a telephone number.
<!-- {
  "blockType": "request",
  "name": "post_updateNumber2",
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

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
```

### Example 3: Update reverse number lookup options

#### Request

The following example shows a request to update `reverseNumberLookupOptions` for telephone number associated with resource account.
<!-- {
  "blockType": "request",
  "name": "post_updateNumber3",
}
-->
``` http
POST https://graph.microsoft.com/beta/admin/teams/telephoneNumberManagement/numberAssignments/updateNumber
Content-Type: application/json

{
  "telephoneNumber": "+12061234567",
  "reverseNumberLookupOptions": ["skipInternalVoip"],
}
```

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
```

### Example 4: Clear location ID

#### Request

The following example shows a request to update `locationId` of a telephone number.

<!-- {
  "blockType": "request",
  "name": "post_updateNumber4",
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

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
```
