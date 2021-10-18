---
title: "Create provisioningObjectSummary"
description: "Create a new provisioningObjectSummary object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create provisioningObjectSummary
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new provisioningObjectSummary object.

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
POST /auditLogs/provisioning
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [provisioningObjectSummary](../resources/provisioningobjectsummary.md) object.

You can specify the following properties when creating a **provisioningObjectSummary**.

|Property|Type|Description|
|:---|:---|:---|
|activityDateTime|DateTimeOffset|**TODO: Add Description** Required.|
|tenantId|String|**TODO: Add Description** Optional.|
|jobId|String|**TODO: Add Description** Optional.|
|cycleId|String|**TODO: Add Description** Optional.|
|changeId|String|**TODO: Add Description** Optional.|
|action|String|**TODO: Add Description** Optional.|
|provisioningAction|provisioningAction|**TODO: Add Description**. The possible values are: `other`, `create`, `delete`, `disable`, `update`, `stagedDelete`, `unknownFutureValue`. Optional.|
|durationInMilliseconds|Int32|**TODO: Add Description** Optional.|
|servicePrincipal|[Microsoft.AAD.Reporting.provisioningServicePrincipal](../resources/provisioningserviceprincipal.md)|**TODO: Add Description** Optional.|
|initiatedBy|[Microsoft.AAD.Reporting.initiator](../resources/initiator.md)|**TODO: Add Description** Optional.|
|sourceSystem|[Microsoft.AAD.Reporting.provisioningSystem](../resources/provisioningsystem.md)|**TODO: Add Description** Optional.|
|targetSystem|[Microsoft.AAD.Reporting.provisioningSystem](../resources/provisioningsystem.md)|**TODO: Add Description** Optional.|
|sourceIdentity|[Microsoft.AAD.Reporting.provisionedIdentity](../resources/provisionedidentity.md)|**TODO: Add Description** Optional.|
|targetIdentity|[Microsoft.AAD.Reporting.provisionedIdentity](../resources/provisionedidentity.md)|**TODO: Add Description** Optional.|
|statusInfo|[Microsoft.AAD.Reporting.statusBase](../resources/statusbase.md)|**TODO: Add Description** Optional.|
|provisioningStatusInfo|[Microsoft.AAD.Reporting.provisioningStatusInfo](../resources/provisioningstatusinfo.md)|**TODO: Add Description** Optional.|
|provisioningSteps|[Microsoft.AAD.Reporting.provisioningStep](../resources/provisioningstep.md) collection|**TODO: Add Description** Optional.|
|modifiedProperties|[Microsoft.AAD.Reporting.modifiedProperty](../resources/modifiedproperty.md) collection|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [provisioningObjectSummary](../resources/provisioningobjectsummary.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_provisioningobjectsummary_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/auditLogs/provisioning
Content-Type: application/json
Content-length: 1207

{
  "@odata.type": "#Microsoft.AAD.Reporting.provisioningObjectSummary",
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
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Microsoft.AAD.Reporting.provisioningObjectSummary"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

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
```

