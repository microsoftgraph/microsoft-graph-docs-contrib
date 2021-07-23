---
title: "Update dataSubjectRequest"
description: "Update the properties of a dataSubjectRequest object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update dataSubjectRequest
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [dataSubjectRequest](../resources/datasubjectrequest.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /compliance/dataSubjectRequests/{dataSubjectRequestId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [dataSubjectRequest](../resources/datasubjectrequest.md) object.

The following table shows the properties that are required when you update the [dataSubjectRequest](../resources/datasubjectrequest.md).

|Property|Type|Description|
|:---|:---|:---|
|assignedTo|[microsoft.privacyManagement.identity](../resources/identity.md)|**TODO: Add Description**|
|closedDateTime|DateTimeOffset|**TODO: Add Description**|
|createdBy|[microsoft.privacyManagement.identitySet](../resources/identityset.md)|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|dataSubject|[microsoft.privacyManagement.dataSubject](../resources/datasubject.md)|**TODO: Add Description**|
|dataSubjectType|dataSubjectType|**TODO: Add Description**. Possible values are: `customer`, `currentEmployee`, `formerEmployee`, `prospectiveEmployee`, `student`, `teacher`, `faculty`, `other`, `unknownFutureValue`.|
|description|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|history|[microsoft.privacyManagement.dataSubjectRequestHistory](../resources/datasubjectrequesthistory.md) collection|**TODO: Add Description**|
|insight|[microsoft.privacyManagement.dataSubjectRequestDetail](../resources/datasubjectrequestdetail.md)|**TODO: Add Description**|
|internalDueDateTime|DateTimeOffset|**TODO: Add Description**|
|lastModifiedBy|[microsoft.privacyManagement.identitySet](../resources/identityset.md)|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|regulations|String collection|**TODO: Add Description**|
|stages|[microsoft.privacyManagement.dataSubjectRequestStageDetail](../resources/datasubjectrequeststagedetail.md) collection|**TODO: Add Description**|
|status|dataSubjectRequestStatus|**TODO: Add Description**. Possible values are: `active`, `closed`, `unknownFutureValue`.|
|type|dataSubjectRequestType|**TODO: Add Description**. Possible values are: `export`, `delete`, `access`, `tagForAction`, `unknownFutureValue`.|



## Response

If successful, this method returns a `200 OK` response code and an updated [dataSubjectRequest](../resources/datasubjectrequest.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_datasubjectrequest"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/compliance/dataSubjectRequests/{dataSubjectRequestId}
Content-Type: application/json
Content-length: 837

{
  "@odata.type": "#microsoft.graph.dataSubjectRequest",
  "assignedTo": {
    "@odata.type": "microsoft.graph.identity"
  },
  "closedDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "dataSubject": {
    "@odata.type": "microsoft.graph.dataSubject"
  },
  "dataSubjectType": "String",
  "description": "String",
  "displayName": "String",
  "history": [
    {
      "@odata.type": "microsoft.graph.dataSubjectRequestHistory"
    }
  ],
  "insight": {
    "@odata.type": "microsoft.graph.dataSubjectRequestDetail"
  },
  "internalDueDateTime": "String (timestamp)",
  "regulations": [
    "String"
  ],
  "stages": [
    {
      "@odata.type": "microsoft.graph.dataSubjectRequestStageDetail"
    }
  ],
  "status": "String",
  "type": "String"
}
```


### Response
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
  "@odata.type": "#microsoft.graph.dataSubjectRequest",
  "assignedTo": {
    "@odata.type": "microsoft.graph.identity"
  },
  "closedDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)",
  "dataSubject": {
    "@odata.type": "microsoft.graph.dataSubject"
  },
  "dataSubjectType": "String",
  "description": "String",
  "displayName": "String",
  "history": [
    {
      "@odata.type": "microsoft.graph.dataSubjectRequestHistory"
    }
  ],
  "insight": {
    "@odata.type": "microsoft.graph.dataSubjectRequestDetail"
  },
  "internalDueDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "regulations": [
    "String"
  ],
  "stages": [
    {
      "@odata.type": "microsoft.graph.dataSubjectRequestStageDetail"
    }
  ],
  "status": "String",
  "type": "String"
}
```

