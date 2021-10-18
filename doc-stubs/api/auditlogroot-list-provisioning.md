---
title: "List provisioning"
description: "Get the provisioningObjectSummary resources from the provisioning navigation property."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# List provisioning
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the provisioningObjectSummary resources from the provisioning navigation property.

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
GET /auditLogs/provisioning
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [provisioningObjectSummary](../resources/provisioningobjectsummary.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_provisioningobjectsummary"
}
-->
``` http
GET https://graph.microsoft.com/beta/auditLogs/provisioning
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(Microsoft.AAD.Reporting.provisioningObjectSummary)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#Microsoft.AAD.Reporting.provisioningObjectSummary",
      "id": "161ad8e4-d8e4-161a-e4d8-1a16e4d81a16",
      "activityDateTime": "String (timestamp)",
      "tenantId": "String",
      "jobId": "String",
      "cycleId": "String",
      "changeId": "String",
      "action": "String",
      "provisioningAction": "String",
      "durationInMilliseconds": "Integer",
      "servicePrincipal": {
        "@odata.type": "microsoft.graph.provisioningServicePrincipal"
      },
      "initiatedBy": {
        "@odata.type": "microsoft.graph.initiator"
      },
      "sourceSystem": {
        "@odata.type": "microsoft.graph.provisioningSystem"
      },
      "targetSystem": {
        "@odata.type": "microsoft.graph.provisioningSystem"
      },
      "sourceIdentity": {
        "@odata.type": "microsoft.graph.provisionedIdentity"
      },
      "targetIdentity": {
        "@odata.type": "microsoft.graph.provisionedIdentity"
      },
      "statusInfo": {
        "@odata.type": "microsoft.graph.statusBase"
      },
      "provisioningStatusInfo": {
        "@odata.type": "microsoft.graph.provisioningStatusInfo"
      },
      "provisioningSteps": [
        {
          "@odata.type": "microsoft.graph.provisioningStep"
        }
      ],
      "modifiedProperties": [
        {
          "@odata.type": "microsoft.graph.modifiedProperty"
        }
      ]
    }
  ]
}
```

