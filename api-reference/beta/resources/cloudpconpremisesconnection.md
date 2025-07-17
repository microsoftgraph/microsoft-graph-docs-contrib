---
title: "cloudPcOnPremisesConnection resource type"
description: "Represents a defined collection of Azure resource information that can be used to establish Azure network connectivity for Cloud PCs."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
toc.title: Cloud PC Azure network connection
ms.date: 10/21/2024
---

# cloudPcOnPremisesConnection resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a defined collection of Azure resource information that can be used to establish Azure network connectivity for Cloud PCs.

[!INCLUDE [on-premise-rename-note](../../includes/on-premise-rename-note.md)]

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/virtualendpoint-list-onpremisesconnections.md)|[cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) collection|List properties and relationships of the [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) objects.|
|[Get](../api/cloudpconpremisesconnection-get.md)|[cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md)|Read the properties and relationships of the [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) object.|
|[Create](../api/virtualendpoint-post-onpremisesconnections.md)|[cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md)|Create a new [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) object.|
|[Update](../api/cloudpconpremisesconnection-update.md)|[cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md)|Update the properties of a [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) object.|
|[Delete](../api/cloudpconpremisesconnection-delete.md)|None|Delete a [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) object. You can’t delete a connection that’s in use.|
|[Run health checks](../api/cloudpconpremisesconnection-runhealthcheck.md)|None|Run health checks on the [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md).|
|[Update Active Directory domain password](../api/cloudpconpremisesconnection-updateaddomainpassword.md)|None|Update Active Directory domain password for a successful [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md). This API is supported when the type of the **cloudPcOnPremisesConnection** object is `hybridAzureADJoin`.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|adDomainName|String|The fully qualified domain name (FQDN) of the Active Directory domain you want to join. Optional.|
|adDomainPassword|String|The password associated with **adDomainUsername**.|
|adDomainUsername|String|The username of an Active Directory account (user or service account) that has permissions to create computer objects in Active Directory. Required format: `admin@contoso.com`. Optional.|
|alternateResourceUrl|String|The interface URL of the partner service's resource that links to this Azure network connection. Returned only on `$select`.|
|connectionType|[cloudPcOnPremisesConnectionType](../resources/cloudpconpremisesconnection.md#cloudpconpremisesconnectiontype-values)|Specifies the method by which a provisioned Cloud PC is joined to Microsoft Entra. The `azureADJoin` option indicates the absence of an on-premises Active Directory (AD) in the current tenant that results in the Cloud PC device only joining to Microsoft Entra. The `hybridAzureADJoin` option indicates the presence of an on-premises AD in the current tenant and that the Cloud PC joins both the on-premises AD and Microsoft Entra. The selected option also determines the types of users who can be assigned and can sign into a Cloud PC. The `azureADJoin` option allows both cloud-only and hybrid users to be assigned and sign in, whereas `hybridAzureADJoin` is restricted to hybrid users only. The default value is `hybridAzureADJoin`. The possible values are: `hybridAzureADJoin`, `azureADJoin`, `unknownFutureValue`.|
|displayName|String|The display name for the Azure network connection.|
|healthCheckStatus|[cloudPcOnPremisesConnectionStatus](#cloudpconpremisesconnectionstatus-values)|The status of the most recent health check done on the Azure network connection. For example, if the status is `passed`, the Azure network connection passed all checks run by the service. Possible values are: `pending`, `running`, `passed`, `failed`,  `warning`, `informational`, `unknownFutureValue`. Read-only.|
|healthCheckStatusDetails|[cloudPcOnPremisesConnectionStatusDetails](../resources/cloudpconpremisesconnectionstatusdetails.md)|The details of the connection's health checks and the corresponding results. Returned only on `$select`. For an example that shows how to get the **inUse** property, see [Example 2: Get the selected properties of an Azure network connection, including healthCheckStatusDetails](../api/cloudpconpremisesconnection-get.md). Read-only.|
|healthCheckStatusDetails (deprecated)|[cloudPcOnPremisesConnectionStatusDetails](../resources/cloudpconpremisesconnectionstatusdetails.md)|Indicates the health checks for the connection and their respective results. Returned only on `$select`. For an example that shows how to get the **inUse** property, see [Example 2: Get the selected properties of an Azure network connection, including healthCheckStatusDetails](../api/cloudpconpremisesconnection-get.md). Read-only. The **healthCheckStatusDetails** property is deprecated and stopped returning data on January 31, 2024. Going forward, use the **healthCheckStatusDetail** property.|
|healthCheckStatusDetail|[cloudPcOnPremisesConnectionStatusDetail](../resources/cloudpconpremisesconnectionstatusdetail.md)|Indicates the results of health checks performed on the on-premises connection. Returned only on `$select`. For an example that shows how to get the **inUse** property, see [Example 2: Get the selected properties of an Azure network connection, including healthCheckStatusDetails](../api/cloudpconpremisesconnection-get.md). Read-only.|
|id|String|Unique identifier for the Azure network connection. Read-only.|
|inUse|Boolean|When `true`, the Azure network connection is in use. When `false`, the connection isn't in use. You can't delete a connection that’s in use. Returned only on `$select`. For an example that shows how to get the **inUse** property, see [Example 2: Get the selected properties of an Azure network connection, including healthCheckStatusDetails](../api/cloudpconpremisesconnection-get.md). Read-only.|
|inUseByCloudPc|Boolean| Indicates whether a Cloud PC is using this on-premises network connection. `true` if at least one Cloud PC is using it. Otherwise, `false`. Read-only. Default is false. |
|healthCheckPaused|Boolean| `false` if the regular health checks on the network/domain configuration are currently active. `true` if the checks are paused. If you perform a create or update operation on a **onPremisesNetworkConnection** resource, this value is set to `false` for 4 weeks. If you retry a health check on network/domain configuration, this value is set to `false` for two weeks. If the **onPremisesNetworkConnection** resource is attached in a **provisioningPolicy** or used by a Cloud PC in the past 4 weeks, `healthCheckPaused` is set to `false`. Read-only. Default is `false`.|
|managedBy|[cloudPcManagementService](#cloudpcmanagementservice-values)|Specifies which services manage the Azure network connection. Possible values are: `windows365`, `devBox`, `unknownFutureValue`, `rpaBox`. Use the `Prefer: include-unknown-enum-members` request header to get the following value in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `rpaBox`. Read-only.|
|organizationalUnit|String|The organizational unit (OU) in which the computer account is created. If left null, the OU configured as the default (a well-known computer object container) in your Active Directory domain (OU) is used. Optional.|
|organizationalUnit|String|The organizational unit (OU) in which the computer account is created. If left null, the OU configured as the default (a well-known computer object container) in your Active Directory domain (OU) is used. Optional.|
|virtualNetworkId|String|The ID of the target virtual network. Required format: `/subscriptions/{subscription-id}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}`.|
|virtualNetworkLocation|String|Indicates the resource location of the virtual target network. Read-only, computed value.|
|resourceGroupId|String|The ID of the target resource group. Required format: `/subscriptions/{subscription-id}/resourceGroups/{resourceGroupName}`.|
|subnetId|String|The ID of the target subnet. Required format: `/subscriptions/{subscription-id}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkId}/subnets/{subnetName}`.|
|subscriptionId|String|The ID of the target Azure subscription associated with your tenant.|
|subscriptionName|String|The name of the target Azure subscription. Read-only.|
|type (deprecated)|[cloudPcOnPremisesConnectionType](../resources/cloudpconpremisesconnection.md#cloudpconpremisesconnectiontype-values)|Specifies the method by which a provisioned Cloud PC is joined to Microsoft Entra. The `azureADJoin` option indicates the absence of an on-premises Active Directory (AD) in the current tenant that results in the Cloud PC device only joining to Microsoft Entra. The `hybridAzureADJoin` option indicates the presence of an on-premises AD in the current tenant and that the Cloud PC joins both the on-premises AD and Microsoft Entra. The selected option also determines the types of users who can be assigned and can sign into a Cloud PC. The `azureADJoin` option allows both cloud-only and hybrid users to be assigned and sign in, whereas `hybridAzureADJoin` is restricted to hybrid users only. The default value is `hybridAzureADJoin`. The possible values are: `hybridAzureADJoin`, `azureADJoin`, `unknownFutureValue`. The **type** property is deprecated and stopped returning data on January 31, 2024. Going forward, use the **connectionType** property.|

### cloudPcManagementService values

| Member             | Description                                                                               |
|:-------------------|:------------------------------------------------------------------------------------------|
| devBox             | Azure network connection was successfully created through Project Fidalgo.                |
| rpaBox             | The Azure network connection was successfully created through the Power Automate project. |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use.                                         |
| windows365         | Azure network connection was successfully created through Windows 365.                     |


### cloudPcOnPremisesConnectionType values

|Member|Description|
|:---|:---|
|azureADJoin|Joined only to Microsoft Entra ID. Cloud-only and hybrid users can be assigned and sign into the Cloud PC.|
|hybridAzureADJoin|Joined to on-premises Active Directory and Microsoft Entra ID. Only hybrid users can be assigned and sign into the Cloud PC.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

### cloudPcOnPremisesConnectionStatus values

|Member|Description|
|:---|:---|
|failed|Health checks notify the customer that the Azure network connection isn't properly configured or functioning. Provisioning fails. The customer needs to identify the issue and resolve it using the guidance provided by Azure network connection for provisioning to be successful.|
|informational|Health checks provide information to the customer about current or associated prerequisite checks on Cloud PC add-on features such as Single Sign-On. Informational health checks don't affect the provisioning of the customer's Cloud PC. The information is intended to optimize the user experience.|
|passed|Health checks notify the customer that the Azure network connection is operating as intended. Customer can provision their Cloud PC without any issue.|
|pending|Created and waiting for health checks.|
|running|Health checks are running.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|
|warning|Health checks notify the customer that the Azure network connection isn't configured as per the Microsoft best practice guidance, such as endpoint connectivity. The customer should configure Cloud PC required endpoints before provisioning a Cloud PC. It doesn't affect the provisioning of the customer's Cloud PC but might affect the customer's experience.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
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
  "connectionType": "String",
  "displayName": "String",
  "healthCheckStatus": "String",
  "healthCheckStatusDetail": { "@odata.type": "microsoft.graph.cloudPcOnPremisesConnectionStatusDetail" },
  "healthCheckStatusDetails": { "@odata.type": "microsoft.graph.cloudPcOnPremisesConnectionStatusDetails" },
  "id": "String (identifier)",
  "inUse": "Boolean",
  "inUseByCloudPc": "Boolean",
  "healthCheckPaused": "Boolean",
  "managedBy": "String",
  "organizationalUnit": "String",
  "resourceGroupId": "String",
  "subnetId": "String",
  "subscriptionId": "String",
  "subscriptionName": "String",
  "type": "String",
  "virtualNetworkId": "String",
  "virtualNetworkLocation": "String"
}
```
