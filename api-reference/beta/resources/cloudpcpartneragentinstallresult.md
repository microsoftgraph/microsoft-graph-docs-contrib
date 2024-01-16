---
title: "cloudPcPartnerAgentInstallResult resource type"
description: "Describes installation results for a partner agent on a Cloud PC."
author: "JannyMa"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcPartnerAgentInstallResult resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes installation results for a partner agent on a Cloud PC.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|installStatus|[cloudPcPartnerAgentInstallStatus](#cloudpcpartneragentinstallstatus-values)|The status of a partner agent installation. Possible values are: installed, installFailed, installing, uninstalling, uninstallFailed and licensed. Read-Only.|
|isThirdPartyPartner|Boolean|Indicates whether the partner agent is a third party. When `true`, the agent is a third-party (non-Microsoft) agent and when `false`, the agent is a Microsoft agent or isn't known.  The default value is `false`.|
|partnerAgentName|[cloudPcPartnerAgentName](#cloudpcpartneragentname-values)|The name of the first-party or third-party partner agent. Possible values for third-party partners are `Citrix`, `VMware` and `HP`. Read-Only.|
|retriable|Boolean|Indicates whether the partner agent installation should be retried. The default value is `false`.|
|errorMessage|string|Contains a detailed error message when the partner agent installation failed.|

### cloudPcPartnerAgentName values

|Member|Description|
|:---|:---|
|citrix| A third-party partner named Citrix.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|
|vMware| A third-party partner named VMware.|
|hp| A third-party partner named HP.|

#### cloudPcPartnerAgentInstallStatus values

|Member|Description|
|:---|:---|
|installed|The partner agent is installed.|
|installFailed|The partner agent installation failed, although the license is assigned.|
|installing|The partner agent is installing.|
|uninstalling|The partner agent is removed when there's no third-party-partner license but the third-party-partner agent was previously installed.|
|uninstallFailed|Indicates the partner agent uninstallation failed, although a license was already unassigned.|
|licensed|The partner license was assigned to this Cloud PC, but the third-party partner agent isn't yet installed.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcPartnerAgentInstallResult"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcPartnerAgentInstallResult",
  "errorMessage": "String",
  "installStatus": "String",
  "isThirdPartyPartner": "Boolean",
  "partnerAgentName": "String",
  "retriable": "Boolean"
}
```
