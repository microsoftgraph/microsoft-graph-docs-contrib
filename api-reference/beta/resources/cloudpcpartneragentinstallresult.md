---
title: "cloudPcPartnerAgentInstallResult resource type"
description: "Describe installation result details for a partner agent on a Cloud PC."
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
|partnerAgentName|[cloudPcPartnerAgentName](#cloudpcpartneragentname-values)|Indicates the name of a partner agent, right now it's just Citrix, which is third-party. And it includes first-party and third-party. Read-Only.|
|installStatus|[cloudPcPartnerAgentInstallStatus](#cloudpcpartneragentinstallstatus-values)|Indicates the status of a partner agent installation, possible value are: installed, installFailed, installing, uninstalling, uninstallFailed, licensed. Read-Only.|
|isThirdPartyPartner|Boolean|Indicates if the partner agent is third-party. When 'TRUE', the agent is a third-party (non-Microsoft) agent.  When 'FALSE', the agent is a Microsoft agent or is not known.  Default value is 'FALSE'.|
|retriable|Boolean|Indicates whether the partner agent installation should be retried. If the installStatus is 'installFailed' or 'licensed' then 'TRUE' indicates the installation should be retried.  If the installStatus is neither 'installFailed'nor 'licensed' then the installation will not be retried if the value is 'FALSE'. Default value is 'FALSE'.|

### cloudPcPartnerAgentName values

|Member|Description|
|:---|:---|
|citrix|Indicates that a third-party-partner named Citrix.|
|unknownFutureValue|Evolvable enumeration sentinel value. Do not use.|

#### cloudPcPartnerAgentInstallStatus values

|Member|Description|
|:---|:---|
|installed|Indicates the partner agent has been installed.|
|installFailed|Indicates the partner agent installation failed although the license has been assigned.|
|installing|Indicates the partner agent is installing.|
|uninstalling|Indicates that the partner agent will automatically be removed.  This occurs when there is no third-party-partner license but the third-party-partner agent was previously installed.|
|uninstallFailed|Indicates the partner agent uninstallation failed although the license has already unassigned.|
|licensed|Indicates the partner license was assigned to this Cloud PC, but the third-party-partner agent is not installed yet.|
|unknownFutureValue|volvable enumeration sentinel value. Do not use.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
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