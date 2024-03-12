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
|[Delete cloudPcOnPremisesConnection](../api/cloudpconpremisesconnection-delete.md)|None|Delete a [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) object. You can’t delete a connection that’s in use.|
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
|healthCheckStatus|[cloudPcOnPremisesConnectionStatus](#cloudpconpremisesconnectionstatus-values)|The status of the most recent health check done on the Azure network connection. For example, if status is `passed`, the Azure network connection passed all checks run by the service. Possible values are: `pending`, `running`, `passed`, `failed`,  `warning`, `informational`, `unknownFutureValue`. Read-only.|
|healthCheckStatusDetails|[cloudPcOnPremisesConnectionStatusDetails](../resources/cloudpconpremisesconnectionstatusdetails.md)|The details of the connection's health checks and the corresponding results. Returned only on `$select`. For an example that shows how to get the **inUse** property, see [Example 2: Get the selected properties of an Azure network connection, including healthCheckStatusDetails](../api/cloudpconpremisesconnection-get.md). Read-only.|
|id|String|Unique identifier for the Azure network connection. Read-only.|
|inUse|Boolean|When `true`, the Azure network connection is in use. When `false`, the connection isn't in use. You can't delete a connection that’s in use. Returned only on `$select`. For an example that shows how to get the **inUse** property, see [Example 2: Get the selected properties of an Azure network connection, including healthCheckStatusDetails](../api/cloudpconpremisesconnection-get.md). Read-only.|
|managedBy|[cloudPcManagementService](#cloudpcmanagementservice-values)|Specifies which services manage the Azure network connection. Possible values are: `windows365`, `devBox`, `unknownFutureValue`, `rpaBox`. You must use the `Prefer: include-unknown-enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `rpaBox`. Read-only.|
|organizationalUnit|String|The organizational unit (OU) in which the computer account is created. If left null, the OU configured as the default (a well-known computer object container) in your Active Directory domain (OU) is used. Optional.|
|virtualNetworkLocation|String|Indicates resource location of the virtual target network. Read-only, computed value.|
|resourceGroupId|String|The ID of the target resource group. Required format: `/subscriptions/{subscription-id}/resourceGroups/{resourceGroupName}`.|
|subnetId|String|The ID of the target subnet. Required format: `/subscriptions/{subscription-id}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkId}/subnets/{subnetName}`.|
|subscriptionId|String|The ID of the target Azure subscription associated with your tenant.|
|subscriptionName|String|The name of the target Azure subscription. Read-only.|
|type|[cloudPcOnPremisesConnectionType](#cloudpconpremisesconnectiontype-values)|Specifies how the provisioned Cloud PC is joined to Microsoft Entra ID. Default value is `hybridAzureADJoin`. Possible values are: `azureADJoin`, `hybridAzureADJoin`, `unknownFutureValue`.|
|virtualNetworkId|String|The ID of the target virtual network. Required format: `/subscriptions/{subscription-id}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}`.|

### cloudPcManagementService values

| Member             | Description                                                                               |
|:-------------------|:------------------------------------------------------------------------------------------|
| windows365         | Azure network connection was successfully created through Windows 365.                     |
| devBox             | Azure network connection was successfully created through Project Fidalgo.                |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use.                                         |
| rpaBox             | The Azure network connection was successfully created through the Power Automate project. |

### cloudPcOnPremisesConnectionType values

|Member|Description|
|:---|:---|
|hybridAzureADJoin|Joined to on-premises Active Directory and Microsoft Entra ID. Only hybrid users can be assigned and sign into the Cloud PC.|
|azureADJoin|Joined only to Microsoft Entra ID. Cloud-only and hybrid users can be assigned and sign into the Cloud PC.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

### cloudPcOnPremisesConnectionStatus values

|Member|Description|
|:---|:---|
|pending|Created and waiting for health checks.|
|running|Health checks are running.|
|passed|Health checks notify the customer that the Azure network connection is operating as intended. Customer can provision their Cloud PC without any issue.|
|failed|Health checks notify the customer that the Azure network connection isn't properly configured or functioning. Provisioning fails. The customer needs to identify the issue and resolve it using the guidance provided by Azure network connection for provisioning to be successful.|
|warning|Health checks notify the customer that the Azure network connection isn't configured as per the Microsoft best practice guidance, such as endpoint connectivity. The customer should configure Cloud PC required endpoints before provisioning a Cloud PC. It doesn't affect the provisioning of the customer's Cloud PC but might affect the customer's experience.|
|informational|Health checks provide information to the customer about current or associated prerequisite checks on Cloud PC add-on features such as Single Sign-On. This won't affect the provisioning of the customer's Cloud PC, but the information is intended to optimize the user experience.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

## Relationships

None.

## JSON representation

Here's a JSON representation of the resource.
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
