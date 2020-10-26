---
title: "cloudPcOnPremisesConnectionHealthCheck resource type"
description: "The details of a health check item"
author: "jiajyang"
localization_priority: Normal
ms.prod: "microsoft_cloudpc"
doc_type: resourcePageType
---

# cloudPcOnPremisesConnectionHealthCheck resource type

Namespace: microsoft.graph

The details of a health check item
## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[RunHealthChecks of cloudPcOnPremisesConnection](../api/cloudpconpremisesconnection-runhealthcheck.md)|None|Run the health checks of an on premises connection.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The health check item display name.|
|status|cloudPcOnPremisesConnectionStatus|The status of the specific health check item. Possible values are: `Pending`, `Running`, `Passed`, `Failed`, `UnknownFutureValue`.|
|startDateTime|DateTimeOffset|The start time of the specific health check item.|
|endDateTime|DateTimeOffset|The end time of the specific health check item.|
|errorType|cloudPcOnPremisesConnectionHealthCheckErrorType|The error type of the health check item. Possible values are: `DnsCheckFqdnNotFound`, `DnsCheckUnknownError`, `AdJoinCheckFqdnNotFound`, `AdJoinCheckIncorrectCredentials`, `AdJoinCheckOrganizationalUnitNotFound`, `AdJoinCheckOrganizationalUnitIncorrectFormat`, `AdJoinCheckUnknownError`, `EndpointConnectivityCheckUrlNotWhitelisted`, `EndpointConnectivityCheckUnknownError`, `AadConnectivityCheckUnknownError`,`resourceAvailabilityCheckNoSubnetIP`,`resourceAvailabilityCheckUnknownError`,`internalServerUnknownError`.|
|recommendedAction|String|The recommended action to fix the corresponding error.|
|additionalDetails|String|Additional details about the health check or the recommended action.|

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
