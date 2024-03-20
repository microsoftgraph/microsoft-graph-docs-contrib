---
title: "cloudPcOnPremisesConnection resource type"
description: "Represents a defined collection of Azure resource information that can be used to establish Azure network connectivity for Cloud PCs."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcOnPremisesConnection resource type

Namespace: microsoft.graph

Represents a defined collection of Azure resource information that can be used to establish Azure network connectivity for Cloud PCs.

[!INCLUDE [on-premise-rename-note](../../includes/on-premise-rename-note.md)]

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List onPremisesConnections](../api/virtualendpoint-list-onpremisesconnections.md)|[cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) collection|List properties and relationships of the [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) objects.|
|[Get cloudPcOnPremisesConnection](../api/cloudpconpremisesconnection-get.md)|[cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md)|Read the properties and relationships of the [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) object.|
|[Create cloudPcOnPremisesConnection](../api/virtualendpoint-post-onpremisesconnections.md)|[cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md)|Create a new [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) object.|
|[Update cloudPcOnPremisesConnection](../api/cloudpconpremisesconnection-update.md)|[cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md)|Update the properties of a [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) object.|
|[Delete cloudPcOnPremisesConnection](../api/cloudpconpremisesconnection-delete.md)|None|Delete a [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) object. You can’t delete a connection that’s in use.|
|[RunHealthChecks of a cloudPcOnPremisesConnection](../api/cloudpconpremisesconnection-runhealthcheck.md)|None|Run health checks on the [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md).|


## Properties

|Property|Type|Description|
|:---|:---|:---|
|adDomainName|String|The fully qualified domain name (FQDN) of the Active Directory domain you want to join. Maximum length is 255. Optional.|
|adDomainPassword|String| The password associated with the username of an Active Directory account (**adDomainUsername**).|
|adDomainUsername|String|The username of an Active Directory account (user or service account) that has permission to create computer objects in Active Directory. Required format: `admin@contoso.com`. Optional.|
|alternateResourceUrl|String|The interface URL of the partner service's resource that links to this Azure network connection. Returned only on `$select`.|
|displayName|String|The display name for the Azure network connection.|
|healthCheckStatus|[cloudPcOnPremisesConnectionStatus](#cloudpconpremisesconnectionstatus-values)|  The status of the most recent health check done on the on-premises connection. For example, if the status is `passed`, the on-premises connection passed all checks run by the service. Possible values: `pending`, `running`, `passed`, `failed`, `warning`, `informational`. Default is `pending`. Read-only. |
|healthCheckStatusDetail|[cloudPcOnPremisesConnectionStatusDetail](../resources/cloudpconpremisesconnectionstatusdetail.md)| Indicates the results of health checks performed on the on-premises connection. Read-only. Returned only on `$select`. For an example that shows how to get the **inUse** property, see [Example 2: Get the selected properties of an Azure network connection, including healthCheckStatusDetail](../api/cloudpconpremisesconnection-get.md). Read-only.|
|id|String|Unique identifier for the Azure network connection. Read-only.|
|inUse|Boolean|When `true`, the Azure network connection is in use. When `false`, the connection isn't in use. You can't delete a connection that’s in use. Returned only on `$select`. For an example that shows how to get the **inUse** property, see [Example 2: Get the selected properties of an Azure network connection, including healthCheckStatusDetail](../api/cloudpconpremisesconnection-get.md). Read-only.|
|organizationalUnit|String|The organizational unit (OU) in which the computer account is created. If left null, the OU configured as the default (a well-known computer object container) in the tenant's Active Directory domain (OU) is used. Optional.|
|virtualNetworkLocation|String|Indicates the resource location of the target virtual network. For example, the location can be eastus2, westeurope, etc. Read-only (computed value). |
|resourceGroupId|String|The unique identifier of the target resource group used associated with the on-premises network connectivity for Cloud PCs. Required format: “/subscriptions/{subscription-id}/resourceGroups/{resourceGroupName}” |
|subnetId|String|The unique identifier of the target subnet used associated with the on-premises network connectivity for Cloud PCs. Required format: “/subscriptions/{subscription-id}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkId}/subnets/{subnetName}” |
|subscriptionId|String|The unique identifier of the Azure subscription associated with the tenant.|
|subscriptionName|String|The name of the Azure subscription is used to create an Azure network connection. Read-only.|
|connectionType|[cloudPcOnPremisesConnectionType](#cloudpconpremisesconnectiontype-values)|Specifies how the provisioned Cloud PC joins to Microsoft Entra. It includes different types, one is Microsoft Entra ID join, which means there's no on-premises Active Directory (AD) in the current tenant, and the Cloud PC device is joined by Microsoft Entra. Another one is hybridAzureADJoin, which means there's also an on-premises Active Directory (AD) in the current tenant and the Cloud PC device joins to on-premises Active Directory (AD) and Microsoft Entra. The type also determines which types of users can be assigned and can sign into a Cloud PC. The azureADJoin type indicates that cloud-only and hybrid users can be assigned and signed into the Cloud PC. hybridAzureADJoin indicates only hybrid users can be assigned and signed into the Cloud PC. The default value is `hybridAzureADJoin`.|
|virtualNetworkId|String|The unique identifier of the target virtual network used associated with the on-premises network connectivity for Cloud PCs. Required format: “/subscriptions/{subscription-id}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}” |

### cloudPcOnPremisesConnectionType values

|Member|Description|
|:---|:---|
|hybridAzureADJoin|Indicates Cloud PC devices are joined to on-premises Active Directory and registered with Microsoft Entra ID.|
|azureADJoin|Indicates Cloud PC devices are joined only to Microsoft Entra ID.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

### cloudPcOnPremisesConnectionStatus values

|Member|Description|
|:---|:---|
|pending|Default. Indicates Cloud PC Azure network connection health check is initiated and waiting for completion.|
|running|Indicates Cloud PC Azure network connection health checks are still running.|
|passed|Indicates Cloud PC Azure network connection health checks are completed and passed. Customer can provision their Cloud PC without any issue.​|
|failed|Indicates Cloud PC Azure network connection health checks are now completed, with failures. The customer's environment isn't properly configured, which leads to provisioning Cloud PC failure. The customer needs to identify the issue and resolve it using the guidance provided by the on-premises connection for provisioning successfully.|
|warning|Indicates Cloud PC Azure network connection health checks are now completed, with failures. The customer's environment is not properly configured, which leads to provisioning Cloud PC failure. The customer needs to identify the issue and resolve it using the guidance provided by the on-premises connection for provisioning successfully.|
|informational|Indicates Cloud PC Azure network connection health checks are now completed, with health check information. Health checks provide information to customers about current or associated prerequisite checks status on Cloud PC add-on features such as Single Sign-On. It doesn't affect the provisioning of our customers' Cloud PCs but intends to optimize user experience.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

## Relationships

None.

## JSON representation

The following is an example of the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcOnPremisesConnection",
  "baseType": "microsoft.graph.entity",
  "openType": false,
  "optionalProperties": ["healthCheckStatusDetail"]
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
  "healthCheckStatusDetail": {
    "@odata.type": "microsoft.graph.cloudPcOnPremisesConnectionStatusDetail",
    "endDateTime": "String (timestamp)",
    "healthChecks": [
      { 
        "@odata.type": "microsoft.graph.cloudPcOnPremisesConnectionHealthCheck",
        "additionalDetail": "String",
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
  "organizationalUnit": "String",
  "resourceGroupId": "String",
  "subnetId": "String",
  "subscriptionId": "String",
  "subscriptionName": "String",
  "connnecetionType": "String",
  "virtualNetworkId": "String"
}
```
