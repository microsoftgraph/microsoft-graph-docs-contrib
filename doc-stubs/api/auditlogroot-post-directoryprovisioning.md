---
title: "Create provisioningObjectSummary"
description: "Create a new provisioningObjectSummary object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
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
POST /auditLogs/directoryProvisioning
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [provisioningObjectSummary](../resources/provisioningobjectsummary.md) object.

The following table shows the properties that are required when you create the [provisioningObjectSummary](../resources/provisioningobjectsummary.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|activityDateTime|DateTimeOffset|**TODO: Add Description**|
|tenantId|String|**TODO: Add Description**|
|jobId|String|**TODO: Add Description**|
|cycleId|String|**TODO: Add Description**|
|changeId|String|**TODO: Add Description**|
|action|String|**TODO: Add Description**|
|provisioningAction|provisioningAction|**TODO: Add Description**. Possible values are: `other`, `create`, `delete`, `disable`, `update`, `stagedDelete`, `unknownFutureValue`.|
|durationInMilliseconds|Int32|**TODO: Add Description**|
|servicePrincipal|[Microsoft.AAD.Reporting.provisioningServicePrincipal](../resources/provisioningserviceprincipal.md)|**TODO: Add Description**|
|initiatedBy|[Microsoft.AAD.Reporting.initiator](../resources/initiator.md)|**TODO: Add Description**|
|sourceSystem|[Microsoft.AAD.Reporting.provisioningSystem](../resources/provisioningsystem.md)|**TODO: Add Description**|
|targetSystem|[Microsoft.AAD.Reporting.provisioningSystem](../resources/provisioningsystem.md)|**TODO: Add Description**|
|sourceIdentity|[Microsoft.AAD.Reporting.provisionedIdentity](../resources/provisionedidentity.md)|**TODO: Add Description**|
|targetIdentity|[Microsoft.AAD.Reporting.provisionedIdentity](../resources/provisionedidentity.md)|**TODO: Add Description**|
|statusInfo|[Microsoft.AAD.Reporting.statusBase](../resources/statusbase.md)|**TODO: Add Description**|
|provisioningStatusInfo|[Microsoft.AAD.Reporting.provisioningStatusInfo](../resources/provisioningstatusinfo.md)|**TODO: Add Description**|
|provisioningSteps|[Microsoft.AAD.Reporting.provisioningStep](../resources/provisioningstep.md) collection|**TODO: Add Description**|
|modifiedProperties|[Microsoft.AAD.Reporting.modifiedProperty](../resources/modifiedproperty.md) collection|**TODO: Add Description**|



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
POST https://graph.microsoft.com/beta/auditLogs/directoryProvisioning
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
  "id": "beaa52f0-52f0-beaa-f052-aabef052aabe",
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

