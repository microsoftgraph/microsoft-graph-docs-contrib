---
title: "List retentionLabels"
description: "Get a list of the retentionLabel objects and their properties."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "compliance"
doc_type: apiPageType
---

# List retentionLabels
Namespace: microsoft.graph.recordsManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [retentionLabel](../resources/recordsmanagement-retentionlabel.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**recordsManagement.Read.All, recordsManagement.ReadWrite.All**|
|Delegated (personal Microsoft account)|**Not Supported**|
|Application|**recordsManagement.Read.All, recordsManagement.ReadWrite.All**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /compliance/recordsManagement/labels
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response.  For example, to retrieve the navigation property for event type, use $expand=eventtype. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [retentionLabel](../resources/retentionlabel) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_retentionlabel"
}
-->
``` http
GET https://graph.microsoft.com/beta/compliance/recordsManagement/labels
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.recordsManagement.retentionLabel)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.recordsManagement.retentionLabel",
      "id": "4cce81b5-81b5-4cce-b581-ce4cb581ce4c",
      "displayName": "String",
      "behaviorDuringRetentionPeriod": "String",
      "actionAfterRetentionPeriod": "String",
      "retentionTrigger": "String",
      "retentionDurationInDays": "Integer",
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
      "dispositionReviewStages": [
        {
          "@odata.type": "microsoft.graph.recordsManagement.dispositionReviewStage"
        }
      ]
    }
  ]
}
```

