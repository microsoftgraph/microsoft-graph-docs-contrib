---
title: "Create workforceIntegration"
description: "Create a new workforceIntegration object."
ms.localizationpriority: medium
author: "akumar39"
ms.subservice: "teams"
doc_type: "apiPageType"
ms.date: 09/18/2024
---

# Create workforceIntegration

Namespace: microsoft.graph

Create a new [workforceIntegration](../resources/workforceintegration.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "workforceintegration_post" } -->
[!INCLUDE [permissions-table](../includes/permissions/workforceintegration-post-permissions.md)]

> **Note**: This API supports admin permissions. Users with admin roles can access groups that they are not a member of.

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /teamwork/workforceIntegrations
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-type | application/json. Required. |
| MS-APP-ACTS-AS (deprecated) | A user ID (GUID). Required only if the authorization token is an application token; otherwise, optional. The `MS-APP-ACTS-AS` header is deprecated and no longer required with application tokens.|

## Request body

In the request body, supply a JSON representation of the [workforceIntegration](../resources/workforceintegration.md) object.

The following table lists the properties that you can use when you create a **workforceIntegration** object.

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|apiVersion|Int32|API version for the callback URL. Start with 1.|
|displayName|String|Name of the workforce integration.|
|eligibilityFilteringEnabledEntities|eligibilityFilteringEnabledEntities| Support to view eligibility-filtered results. The possible values are: `none`, `swapRequest`, `offerShiftRequest`, `unknownFutureValue`, `timeOffReason`. Use the `Prefer: include-unknown-enum-members` request header to get the following members in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `timeOffReason`.|
|encryption|[workforceIntegrationEncryption](../resources/workforceintegrationencryption.md)|The workforce integration encryption resource.|
|isActive|Boolean|Indicates whether this workforce integration is currently active and available.|
|supportedEntities|workforceIntegrationSupportedEntities | The Shifts entities supported for synchronous change notifications. Shifts call the provided URL when client changes occur to the entities specified in this property. By default, no entities are supported for change notifications. The possible values are: `none`, `shift`, `swapRequest`, `userShiftPreferences`, `openShift`, `openShiftRequest`, `offerShiftRequest`, `unknownFutureValue`, `timeCard`, `timeOffReason`, `timeOff`, `timeOffRequest`. Use the `Prefer: include-unknown-enum-members` request header to get the following values in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `timeCard`, `timeOffReason` , `timeOff` , `timeOffRequest`.|
|url|String| Workforce integration URL used for callbacks from the Shifts service.|

## Response

If successful, this method returns a `201 Created` response code and a new [workforceIntegration](../resources/workforceintegration.md) object in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_workforceintegration_from_teamwork"
}-->

```http
POST https://graph.microsoft.com/v1.0/teamwork/workforceIntegrations
Content-Type: application/json

{
  "displayName": "ABCWorkforceIntegration",
  "apiVersion": 1,
  "isActive": true,
  "encryption": {
    "protocol": "sharedSecret",
    "secret": "My Secret"
  },
  "url": "https://ABCWorkforceIntegration.com/Contoso/",
  "supportedEntities": "Shift,SwapRequest",
  "eligibilityFilteringEnabledEntities": "SwapRequest"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-workforceintegration-from-teamwork-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-workforceintegration-from-teamwork-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-workforceintegration-from-teamwork-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-workforceintegration-from-teamwork-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-workforceintegration-from-teamwork-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-workforceintegration-from-teamwork-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-workforceintegration-from-teamwork-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.workforceIntegration"
} -->

```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "id": "c5d0c76b-80c4-481c-be50-923cd8d680a1",
  "displayName": "ABCWorkforceIntegration",
  "apiVersion": 1,
  "isActive": true,
  "encryption": {
    "protocol": "sharedSecret",
    "secret": null
  },
  "url": "https://abcWorkforceIntegration.com/Contoso/",
  "supportedEntities": "Shift,SwapRequest",
  "eligibilityFilteringEnabledEntities": "SwapRequest"
}
```

## Examples for use cases of WorkforceIntegration entity for Eligibility Filtering by workforce management system (WFM) rules

### Use case: Create a new WorkforceIntegration with SwapRequest enabled for eligibility filtering

### Request

The following example shows a request.
```
POST https://graph.microsoft.com/v1.0/teamwork/workforceIntegrations/
Authorization: Bearer {token}
Content-type: application/json

{
  "displayName": "ABCWorkforceIntegration",
  "apiVersion": 1,
  "isActive": true,
  "encryption": {
    "protocol": "sharedSecret",
    "secret": "My Secret"
  },
  "url": "https://ABCWorkforceIntegration.com/Contoso/",
  "supportedEntities": "Shift,SwapRequest",
  "eligibilityFilteringEnabledEntities": "SwapRequest"
}
```
### Response

The following example shows the response.
```
HTTP/1.1 200 OK
{
  "id": "c5d0c76b-80c4-481c-be50-923cd8d680a1",
  "displayName": "ABCWorkforceIntegration",
  "apiVersion": 1,
  "isActive": true,
  "encryption": {
    "protocol": "sharedSecret",
    "secret": null
  },
  "url": "https://abcWorkforceIntegration.com/Contoso/",
  "supportedEntities": "Shift,SwapRequest",
  "eligibilityFilteringEnabledEntities": "SwapRequest"
}

```
To see how to update an existing workforceIntegration with SwapRequest enabled for eligibility filtering, see [Update](../api/workforceintegration-update.md).

## Example of fetching eligible shifts when SwapRequest is included in eligibilityFilteringEnabledEntities
The interaction between Shifts app and workforce integration endpoints  follow the existing pattern.

### Request

This example shows a request made by Shifts to the workforce integration endpoint to fetch eligible shifts for a swap request.

```
POST https://abcWorkforceIntegration.com/Contoso/{apiVersion}/team/{teamId}/read
Accept-Language: en-us
{
  "requests": [
  {
     "id": "{shiftId}",
     "method": "GET”,
     "url": “/shifts/{shiftId}/requestableShifts?requestType={requestType}&startDateTime={startDateTime}&endDateTime={endDateTime}”
   }]
}
```
### Response

The following example shows the response from the workforce integration service.
```
HTTP/1.1 200 OK
{
  "responses": [
    "id": "{shiftId}",
    "status: 200,
    "body": {
       "data": [{shiftId}, {shiftId}...]
       "error": null
    }
  ]
}
```


<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create workforceIntegration",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

