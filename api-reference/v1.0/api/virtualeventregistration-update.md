---
title: "Update virtualEventRegistration"
description: "Update the properties of a virtualEventRegistration object."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update virtualEventRegistration

Namespace: microsoft.graph



Update the properties of a [virtualEventRegistration](../resources/virtualeventregistration.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "virtualeventregistration-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/virtualeventregistration-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /virtualEventRegistration
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|userId|String|**TODO: Add Description** Optional.|
|firstName|String|**TODO: Add Description** Optional.|
|lastName|String|**TODO: Add Description** Optional.|
|email|String|**TODO: Add Description** Optional.|
|status|virtualEventAttendeeRegistrationStatus|**TODO: Add Description**. The possible values are: `registered`, `canceled`, `waitlisted`, `pendingApproval`, `rejectedByOrganizer`, `unknownFutureValue`. Optional.|
|registrationDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|cancelationDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|registrationQuestionAnswers|[virtualEventRegistrationQuestionAnswer](../resources/virtualeventregistrationquestionanswer.md) collection|**TODO: Add Description** Optional.|
|preferredTimezone|String|**TODO: Add Description** Optional.|
|preferredLanguage|String|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [virtualEventRegistration](../resources/virtualeventregistration.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_virtualeventregistration"
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/virtualEventRegistration
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.virtualEventRegistration",
  "userId": "String",
  "firstName": "String",
  "lastName": "String",
  "email": "String",
  "status": "String",
  "registrationDateTime": "String (timestamp)",
  "cancelationDateTime": "String (timestamp)",
  "registrationQuestionAnswers": [
    {
      "@odata.type": "microsoft.graph.virtualEventRegistrationQuestionAnswer"
    }
  ],
  "preferredTimezone": "String",
  "preferredLanguage": "String"
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.virtualEventRegistration",
  "id": "34d6f3f4-8ace-b7df-db7f-ede79594f7b5",
  "userId": "String",
  "firstName": "String",
  "lastName": "String",
  "email": "String",
  "status": "String",
  "registrationDateTime": "String (timestamp)",
  "cancelationDateTime": "String (timestamp)",
  "registrationQuestionAnswers": [
    {
      "@odata.type": "microsoft.graph.virtualEventRegistrationQuestionAnswer"
    }
  ],
  "preferredTimezone": "String",
  "preferredLanguage": "String"
}
```

