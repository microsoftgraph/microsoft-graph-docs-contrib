---
title: "cloudPcPartnerAgentInstallResult resource type"
description: "Provides installation results for a partner agent on a Cloud PC."
author: "JannyMa"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcPartnerAgentInstallResult resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describe installation result details for a partner agent on a Cloud PC.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|installStatus|[cloudPcPartnerAgentInstallStatus](#cloudpcpartneragentinstallstatus-values)|The status of a partner agent installation. Possible values are: installed, installFailed, installing, uninstalling, uninstallFailed and licensed. Read-Only.|
|isThirdPartyPartner|Boolean|Indicates if the partner agent is a third party. When 'TRUE' the agent is a third-party (non-Microsoft) agent and when 'FALSE' the agent is a Microsoft agent or isn't known.  The default value is 'FALSE'|
|partnerAgentName|[cloudPcPartnerAgentName](#cloudpcpartneragentname-values)|The name of the partner agent, whether first party or third party. Possible values for third-party partners are `Citrix` and `VMware`. Read-Only.|
|retriable|Boolean|Indicates if the partner agent is a third party. When 'TRUE' the agent is a third-party (non-Microsoft) agent and when 'FALSE' the agent is a Microsoft agent or isn't known. The default value is 'FALSE'|

### cloudPcPartnerAgentName values

|Member|Description|
|:---|:---|
|citrix| A third-party partner named Citrix.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|
|vMware| A third-party partner named VMware.|

#### cloudPcPartnerAgentInstallStatus values

|Member|Description|
|:---|:---|
|installed|The partner agent has been installed.|
|installFailed|The partner agent installation failed although the license has been assigned.|
|installing|The partner agent is installing.|
|uninstalling|The partner agent is removed when there's no third-party-partner license but the third-party-partner agent was previously installed.|
|uninstallFailed|Indicates the partner agent uninstallation failed, although a license was already unassigned.|
|licensed|The partner license was assigned to this Cloud PC, but the third-party partner agent isn't yet installed.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

## Relationships

None.

## JSON representation

Here's a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcPartnerAgentInstallResult"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcPartnerAgentInstallResult",
  "partnerAgentName": "String",
  "installStatus": "String",
  "isThirdPartyPartner": "Boolean",
  "retriable": "Boolean"
}
```
