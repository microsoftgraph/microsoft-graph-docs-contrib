---
title: "cloudPcOnPremisesConnectionHealthCheck resource type"
description: "The result of a cloud PC on-premises connection health check."
author: "AshleyYangSZ"
localization_priority: Normal
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcOnPremisesConnectionHealthCheck resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The result of a cloud PC on-premises connection health check.

[!INCLUDE [cloudpc-api-preview](../../includes/cloudpc-api-preview.md)]

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[RunHealthChecks of cloudPcOnPremisesConnection](../api/cloudpconpremisesconnection-runhealthcheck.md)|None|Run the health checks of a [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md).|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name for this health check item.|
|status|[cloudPcOnPremisesConnectionStatus](../resources/cloudpconpremisesconnection.md/#cloudPcOnPremisesConnectionStatus-values)|The status of the health check item. Read-only. Possible values are: `Pending`, `Running`, `Passed`, `Failed`, `UnknownFutureValue`.|
|startDateTime|DateTimeOffset|The start time of the health check item. Read-only.|
|endDateTime|DateTimeOffset|The end time of the health check item. Read-only.|
|errorType|[cloudPcOnPremisesConnectionHealthCheckErrorType](#cloudPcOnPremisesConnectionHealthCheckErrorType-values)|The type of error that occurred during this health check. Possible values are: `DnsCheckFqdnNotFound`, `DnsCheckUnknownError`, `AdJoinCheckFqdnNotFound`, `AdJoinCheckIncorrectCredentials`, `AdJoinCheckOrganizationalUnitNotFound`, `AdJoinCheckOrganizationalUnitIncorrectFormat`, `AdJoinCheckUnknownError`, `EndpointConnectivityCheckUrlNotWhitelisted`, `EndpointConnectivityCheckUnknownError`, `AadConnectivityCheckUnknownError`, `ResourceAvailabilityCheckNoSubnetIP`, `resourceAvailabilityCheckSubscriptionDisabled`, `resourceAvailabilityCheckUnknownError`,`permissionCheckNoSubscriptionReaderRole`, `permissionCheckNoResourceGroupOwnerRole`, `permissionCheckNoVNetContributorRole`, `permissionCheckUnknownError`, `internalServerUnknownError`.|
|recommendedAction|String|The recommended action to fix the corresponding error.|
|additionalDetails|String|Additional details about the health check or the recommended action.|

### cloudPcOnPremisesConnectionHealthCheckErrorType values

|Member|value|Description|
|:---|:---|:---|
|dnsCheckFqdnNotFound|100|The DNS check failed because the fully qualified domain name was not found. Please re-enter fully qualified domain name.|
|dnsCheckUnknownError|199|The DNS check failed due to an unknown error.  Please contact Customer Support.|
|adJoinCheckFqdnNotFound|200|The active domain join check failed because the fully qualified domain name was not found. Please re-enter fully qualified domain name.|
|adJoinCheckIncorrectCredentials|201|The active domain join check failed because the domain credentials are incorrect. Please update the username and password.|
|adJoinCheckOrganizationalUnitNotFound|202|The active domain join check failed because the specified organizational unit was not found. Please re-enter organization unit.|
|adJoinCheckOrganizationalUnitIncorrectFormat|203|The active domain join check failed beccause the format of the specified organizational unit is incorrect. Example format: “OU=OU1,OU=OU2,OU=OU3,DC=DC1”.|
|adJoinCheckUnknownError|299|The active domain join check failed due to an unknown error.  Please contact Customer Support.|
|endpointConnectivityCheckUrlNotWhitelisted|300|The endpoint connectivity check failed because the url isn’t on the allowlist in the network firewall settings. Please add URLs to whitelisted network firewall settings. See here for URLs information.|
|endpointConnectivityCheckUnknownError|399|The endpoint connectivity check failed due to an unknown error. Please contact Customer Support.|
|aadConnectivityCheckUnknownError|499|The Azure Active Directory connectivity check failed due to an unknown error. Please contact Customer Support.|
|resourceAvailabilityCheckNoSubnetIP|500|The resource availability check failed because there were no available IP addresses in the subnet. Please free up some or change to another subnet and retry.|
|resourceAvailabilityCheckSubscriptionDisabled|501|The resource availability check failed due to a disabled Azure subscription. Please re-enable the subscription.|
|resourceAvailabilityCheckUnknownError|599|The resource availability check failed due to an unknown error. Please contact Customer Support.|
|permissionCheckNoSubscriptionReaderRole|600|Cloud PC service principal does not have reader permissions on the specified Azure subscription. Please work with subscription owner to add reader role assignment on the Azure subscription for the Cloud PC service principal.|
|permissionCheckNoResourceGroupOwnerRole|601|Cloud PC service principal does not have owner permissions on the specified resource group. Please work with subscription owner to add owner role assignment on the resource group for the Cloud PC service principal.|
|permissionCheckNoVNetContributorRole|602|Cloud PC service principal does not have network contributor permissions on the specified virtual network. Please work with subscription owner to add the network contributor role assignment for the Cloud PC service principal. |
|permissionCheckUnknownError|699|The permission check failed due to an unknown error. Please contact Customer Support.|
|internalServerUnknownError|999|The health check failed due to an unknown internal server error. Please contact Customer Support.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcOnPremisesConnectionHealthCheck"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcOnPremisesConnectionHealthCheck",
  "displayName": "String",
  "status": "String",
  "startDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)",
  "errorType": "String",
  "recommendedAction": "String",
  "additionalDetails": "String"
}
```
