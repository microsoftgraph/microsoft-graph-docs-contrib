---
title: "Get retentionLabel"
description: "Read the properties and relationships of a retentionLabel object."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# Get retentionLabel
Namespace: microsoft.graph.security

Read the properties and relationships of a [retentionLabel](../resources/security-retentionlabel.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|RecordsManagement.Read.All, RecordsManagement.ReadWrite.All|
|Delegated (personal Microsoft account)|Not Supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/labels/retentionLabels/{retentionLabelId}
GET /security/triggers/retentionEvents/{retentionEventId}/labels/{retentionLabelId}
```

## Optional query parameters
This method supports the expand OData query parameters to help customize the response.  For example, to retrieve the **retentionEventType** property, you can use the `expand` parameter:`$expand=retentionEventType`. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.security.retentionLabel](../resources/security-retentionlabel.md) object in the response body.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "get_retentionlabel"
}
-->
``` http
GET  https://graph.microsoft.com/v1.0/security/labels/retentionLabels/{retentionLabelId}
```

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.retentionLabel"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.security.retentionLabel",
    "id": "64a99fb4-07be-0481-8746-44c15c0eef1f",
    "displayName": "String",
    "behaviorDuringRetentionPeriod": "String",
    "actionAfterRetentionPeriod": "String",
    "retentionTrigger": "String",
    "retentionDuration": {
      "@odata.type": "microsoft.graph.security.retentionDuration"
    },
    "isInUse": "Boolean",
    "descriptionForAdmins": "String",
    "descriptionForUsers": "String",
    "createdBy": {
      "@odata.type": "microsoft.graph.identitySet"
    },
    "createdDateTime": "String (timestamp)",
    "lastModifiedBy": {
      "@odata.type": "microsoft.graph.identitySet"
    },
    "lastModifiedDateTime": "String (timestamp)",
    "labelToBeApplied": "String",
    "defaultRecordBehavior": "String"
  }
}
```

