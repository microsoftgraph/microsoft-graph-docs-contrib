---
title: "cloudPcOnPremisesConnection resource type"
description: "Represents a defined collection of Azure resource information that can be used to establish Azure network connectivity for Cloud PCs."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcOnPremisesConnection resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a defined collection of Azure resource information that can be used to establish Azure network connectivity for Cloud PCs.

[!INCLUDE [on-premise-rename-note](../../includes/on-premise-rename-note.md)]

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List onPremisesConnections](../api/virtualendpoint-list-onpremisesconnections.md)|[cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) collection|List properties and relationships of the [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) objects.|
|[Get cloudPcOnPremisesConnection](../api/cloudpconpremisesconnection-get.md)|[cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md)|Read the properties and relationships of the [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) object.|
|[Create cloudPcOnPremisesConnection](../api/virtualendpoint-post-onpremisesconnections.md)|[cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md)|Create a new [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) object.|
|[Update cloudPcOnPremisesConnection](../api/cloudpconpremisesconnection-update.md)|[cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md)|Update the properties of a [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) object.|
|[Delete cloudPcOnPremisesConnection](../api/cloudpconpremisesconnection-delete.md)|None|Delete a [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) object. You can’t delete an connection that’s in use.|
|[RunHealthChecks of cloudPcOnPremisesConnection](../api/cloudpconpremisesconnection-runhealthcheck.md)|None|Run health checks on the [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md).|
|[updateAdDomainPassword](../api/cloudpconpremisesconnection-updateaddomainpassword.md)|None|Update Active Directory domain password for a successful [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md). This API is supported when the type of the **cloudPcOnPremisesConnection** object is `hybridAzureADJoin`.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|adDomainName|String|The fully qualified domain name (FQDN) of the Active Directory domain you want to join. Optional.|
|adDomainPassword|String|The password associated with **adDomainUsername**.|
|adDomainUsername|String|The username of an Active Directory account (user or service account) that has permissions to create computer objects in Active Directory. Required format: `admin@contoso.com`. Optional.|
|alternateResourceUrl|String|The interface URL of the partner service's resource that links to this Azure network connection. Returned only on `$select`.|
|displayName|String|The display name for the Azure network connection.|
|healthCheckStatus|[cloudPcOnPremisesConnectionStatus](#cloudpconpremisesconnectionstatus-values)|The status of the most recent health check done on the Azure network connection. For example, if status is `passed`, the Azure network connection has passed all checks run by the service. Possible values are: `pending`, `running`, `passed`, `failed`, `unknownFutureValue`. Read-only.|
|healthCheckStatusDetails|[cloudPcOnPremisesConnectionStatusDetails](../resources/cloudpconpremisesconnectionstatusdetails.md)|The details of the connection's health checks and the corresponding results. Returned only on `$select`. For an example that shows how to get the **inUse** property, see [Example 2: Get the selected properties of an Azure network connection, including healthCheckStatusDetails](../api/cloudpconpremisesconnection-get.md). Read-only.|
|id|String|Unique identifier for the Azure network connection. Read-only.|
|inUse|Boolean|When `true`, the Azure network connection is in use. When `false`, the connection is not in use. You cannot delete a connection that’s in use. Returned only on `$select`. For an example that shows how to get the **inUse** property, see [Example 2: Get the selected properties of an Azure network connection, including healthCheckStatusDetails](../api/cloudpconpremisesconnection-get.md). Read-only.|
|managedBy|[cloudPcManagementService](#cloudpcmanagementservice-values)|Specifies which services manage the Azure network connection. Possible values are: `windows365`, `devBox`, `unknownFutureValue`, `rpaBox`. Note that you must use the `Prefer: include-unknown-enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `rpaBox`. Read-only.|
|organizationalUnit|String|The organizational unit (OU) in which the computer account is created. If left null, the OU that’s configured as the default (a well-known computer object container) in your Active Directory domain (OU) is used. Optional.|
|virtualNetworkLocation|String|Indicates resource location of the virtual target network. Read-only, computed value.|
|resourceGroupId|String|The ID of the target resource group. Required format: `/subscriptions/{subscription-id}/resourceGroups/{resourceGroupName}`.|
|subnetId|String|The ID of the target subnet. Required format: `/subscriptions/{subscription-id}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkId}/subnets/{subnetName}`.|
|subscriptionId|String|The ID of the target Azure subscription that’s associated with your tenant.|
|subscriptionName|String|The name of the target Azure subscription. Read-only.|
|type|[cloudPcOnPremisesConnectionType](#cloudpconpremisesconnectiontype-values)|Specifies how the provisioned Cloud PC will be joined to Azure Active Directory. Default value is `hybridAzureADJoin`. Possible values are: `azureADJoin`, `hybridAzureADJoin`, `unknownFutureValue`.|
|virtualNetworkId|String|The ID of the target virtual network. Required format: `/subscriptions/{subscription-id}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}`.|

### cloudPcManagementService values

| Member             | Description                                                                               |
|:-------------------|:------------------------------------------------------------------------------------------|
| windows365         | Azure network connection was successfully created through Windows365.                     |
| devBox             | Azure network connection was successfully created through Project Fidalgo.                |
| unknownFutureValue | Evolvable enumeration sentinel value. Do not use.                                         |
| rpaBox             | The Azure network connection was successfully created through the Power Automate project. |

### cloudPcOnPremisesConnectionType values

|Member|Description|
|:---|:---|
|hybridAzureADJoin|Joined to on-premises Active Directory and Azure AD. Only hybrid users can be assigned and sign into the Cloud PC.|
|azureADJoin|Joined only to Azure AD. Cloud-only and hybrid users can be assigned and sign into the Cloud PC.|
|unknownFutureValue|Evolvable enumeration sentinel value. Do not use.|

### cloudPcOnPremisesConnectionStatus values

|Member|Description|
|:---|:---|
|pending|Created and waiting for health checks.|
|running|Health checks are running.|
|passed|Health checks passed.|
|failed|Health checks failed.|
|warning|Health checks passed with warning.|
|unknownFutureValue|Evolvable enumeration sentinel value. Do not use.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcOnPremisesConnection",
  "baseType": "microsoft.graph.entity",
  "openType": false,
  "optionalProperties": ["healthCheckStatusDetails"]
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcOnPremisesConnection",
  "adDomainName": "String",
  "adDomainPassword": "String",
  "adDomainUsername": "String",
  "alternateResourceUrl": "String",
  "displayName": "String",
  "healthCheckStatus": "String",
  "healthCheckStatusDetails": {
    "@odata.type": "microsoft.graph.cloudPcOnPremisesConnectionStatusDetails",
    "endDateTime": "String (timestamp)",
    "healthChecks": [
      { 
        "@odata.type": "microsoft.graph.cloudPcOnPremisesConnectionHealthCheck",
        "additionalDetails": "String",
        "displayName": "String",
        "endDateTime": "String (timestamp)",
        "errorType": "String",
        "recommendedAction": "String",
        "correlationId": "String",
        "startDateTime": "String (timestamp)",
        "status": "String"
      }
    ],
    "startDateTime": "String (timestamp)"
  },
  "id": "String (identifier)",
  "inUse": "Boolean",
  "managedBy": "String",
  "organizationalUnit": "String",
  "resourceGroupId": "String",
  "subnetId": "String",
  "subscriptionId": "String",
  "subscriptionName": "String",
  "type": "String",
  "virtualNetworkId": "String"
}
```
