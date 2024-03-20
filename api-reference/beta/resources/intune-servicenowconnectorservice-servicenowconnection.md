---
title: "serviceNowConnection resource type"
description: "ServiceNow properties including the ServiceNow instanceUrl, connection credentials and other metadata."
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: resourcePageType
---

# serviceNowConnection resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

ServiceNow properties including the ServiceNow instanceUrl, connection credentials and other metadata.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List serviceNowConnections](../api/intune-servicenowconnectorservice-servicenowconnection-list.md)|[serviceNowConnection](../resources/intune-servicenowconnectorservice-servicenowconnection.md) collection|List properties and relationships of the [serviceNowConnection](../resources/intune-servicenowconnectorservice-servicenowconnection.md) objects.|
|[Get serviceNowConnection](../api/intune-servicenowconnectorservice-servicenowconnection-get.md)|[serviceNowConnection](../resources/intune-servicenowconnectorservice-servicenowconnection.md)|Read properties and relationships of the [serviceNowConnection](../resources/intune-servicenowconnectorservice-servicenowconnection.md) object.|
|[Create serviceNowConnection](../api/intune-servicenowconnectorservice-servicenowconnection-create.md)|[serviceNowConnection](../resources/intune-servicenowconnectorservice-servicenowconnection.md)|Create a new [serviceNowConnection](../resources/intune-servicenowconnectorservice-servicenowconnection.md) object.|
|[Delete serviceNowConnection](../api/intune-servicenowconnectorservice-servicenowconnection-delete.md)|None|Deletes a [serviceNowConnection](../resources/intune-servicenowconnectorservice-servicenowconnection.md).|
|[Update serviceNowConnection](../api/intune-servicenowconnectorservice-servicenowconnection-update.md)|[serviceNowConnection](../resources/intune-servicenowconnectorservice-servicenowconnection.md)|Update the properties of a [serviceNowConnection](../resources/intune-servicenowconnectorservice-servicenowconnection.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier of ServiceNow connection|
|instanceUrl|String|Indicates the ServiceNow instance URL that Intune will connect to. Saved in the format of https://<instance>.service-now.com|
|incidentApiUrl|String|Indicates the ServiceNow incident API URL that Intune will use the fetch incidents. Saved in the format of /api/now/table/incident|
|authenticationMethod|[serviceNowAuthenticationMethod](../resources/intune-servicenowconnectorservice-servicenowauthenticationmethod.md)|Indicates the method used by Intune to authenticate with ServiceNow. Currently supports only web authentication with ServiceNow using the specified app id.|
|serviceNowConnectionStatus|[serviceNowConnectionStatus](../resources/intune-servicenowconnectorservice-servicenowconnectionstatus.md)|Status of the ServiceNow Connection based on user's selection. Possible value could be disabled or enabled. Possible values are: `disabled`, `enabled`, `unknownFutureValue`.|
|createdDateTime|DateTimeOffset|Date Time when connection properties were created. The value cannot be modified and is automatically populated when the connection properties were entered.|
|lastModifiedDateTime|DateTimeOffset|Date Time when connection properties were last updated. The value cannot be modified and is automatically populated when the connection properties were updated.|
|lastQueriedDateTime|DateTimeOffset|Date Time when incidents from ServiceNow were last queried|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.serviceNowConnection"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.serviceNowConnection",
  "id": "String (identifier)",
  "instanceUrl": "String",
  "incidentApiUrl": "String",
  "authenticationMethod": {
    "@odata.type": "microsoft.graph.serviceNowOauthSecretAuthentication",
    "appId": "String"
  },
  "serviceNowConnectionStatus": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "lastQueriedDateTime": "String (timestamp)"
}
```
