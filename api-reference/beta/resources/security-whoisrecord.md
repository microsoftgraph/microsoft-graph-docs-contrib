---
title: "whoisRecord resource type"
description: "Represents a WHOIS record that contains information about a registered host, the contacts for the registered host, and other metadata about the registration."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# whoisRecord resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [threatintelligence-api-disclaimer](../../includes/threatintelligence-api-disclaimer.md)]

Represents a WHOIS record that contains information about a registered [host](../resources/security-host.md), the contacts for the registered **host**, and other metadata about the registration. 

Microsoft Defender Threat Intelligence supports the WHOIS protocol commonly used in searching public registrars. One of the most common functions of WHOIS in threat infrastructure is to identify or connect disparate entities based on unique data shared within the records.

Inherits from [whoisBaseRecord](../resources/security-whoisbaserecord.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List whoisRecords](../api/security-threatintelligence-list-whoisrecords.md)|[microsoft.graph.security.whoisRecord](../resources/security-whoisrecord.md) collection|Get a list of [whoisRecord](../resources/security-whoisrecord.md) objects.|
|[Get whoisRecord](../api/security-whoisrecord-get.md)|[microsoft.graph.security.whoisRecord](../resources/security-whoisrecord.md)|Get the specified [whoisRecord](../resources/security-whoisrecord.md) resource.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|abuse|[microsoft.graph.security.whoisContact](../resources/security-whoiscontact.md)|The contact information for the **abuse** contact. Inherited from [whoisBaseRecord](../resources/security-whoisbaserecord.md).|
|admin|[microsoft.graph.security.whoisContact](../resources/security-whoiscontact.md)|The contact information for the **admin** contact. Inherited from [whoisBaseRecord](../resources/security-whoisbaserecord.md).|
|billing|[microsoft.graph.security.whoisContact](../resources/security-whoiscontact.md)|The contact information for the **billing** contact. Inherited from [whoisBaseRecord](../resources/security-whoisbaserecord.md).|
|domainStatus|String|The domain status for this WHOIS object. Inherited from [whoisBaseRecord](../resources/security-whoisbaserecord.md).|
|expirationDateTime|DateTimeOffset|The date and time when this WHOIS record expires with the registrar. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [whoisBaseRecord](../resources/security-whoisbaserecord.md).|
|firstSeenDateTime|DateTimeOffset|The first seen date and time of this WHOIS record. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [whoisBaseRecord](../resources/security-whoisbaserecord.md).|
|id|String|The ID for this WHOIS record object. Inherited from [whoisBaseRecord](../resources/security-whoisbaserecord.md).|
|lastSeenDateTime|DateTimeOffset|The last seen date and time of this WHOIS record. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [whoisBaseRecord](../resources/security-whoisbaserecord.md).|
|lastUpdateDateTime|DateTimeOffset|The date and time when this WHOIS record was last modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [whoisBaseRecord](../resources/security-whoisbaserecord.md).|
|nameservers|[microsoft.graph.security.whoisNameserver](../resources/security-whoisnameserver.md) collection|The nameservers for this WHOIS object. Inherited from [whoisBaseRecord](../resources/security-whoisbaserecord.md).|
|noc|[microsoft.graph.security.whoisContact](../resources/security-whoiscontact.md)|The contact information for the **noc** contact. Inherited from [whoisBaseRecord](../resources/security-whoisbaserecord.md).|
|rawWhoisText|String|The raw WHOIS details for this WHOIS object. Inherited from [whoisBaseRecord](../resources/security-whoisbaserecord.md).|
|registrant|[microsoft.graph.security.whoisContact](../resources/security-whoiscontact.md)|The contact information for the **registrant** contact. Inherited from [whoisBaseRecord](../resources/security-whoisbaserecord.md).|
|registrar|[microsoft.graph.security.whoisContact](../resources/security-whoiscontact.md)|The contact information for the **registrar** contact. Inherited from [whoisBaseRecord](../resources/security-whoisbaserecord.md).|
|registrationDateTime|DateTimeOffset|The date and time when this WHOIS record was registered with a registrar. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [whoisBaseRecord](../resources/security-whoisbaserecord.md).|
|technical|[microsoft.graph.security.whoisContact](../resources/security-whoiscontact.md)|The contact information for the **technical** contact. Inherited from [whoisBaseRecord](../resources/security-whoisbaserecord.md).|
|whoisServer|String|The WHOIS server that provides the details. Inherited from [whoisBaseRecord](../resources/security-whoisbaserecord.md).|
|zone|[microsoft.graph.security.whoisContact](../resources/security-whoiscontact.md)|The contact information for the **zone** contact. Inherited from [whoisBaseRecord](../resources/security-whoisbaserecord.md).|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|history|[microsoft.graph.security.whoisHistoryRecord](../resources/security-whoishistoryrecord.md) collection|The collection of historical records associated to this WHOIS object.|
|host|[microsoft.graph.security.host](../resources/security-host.md)|The host associated to this WHOIS object. Inherited from [whoisBaseRecord](../resources/security-whoisbaserecord.md).|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.whoisRecord",
  "baseType": "microsoft.graph.security.whoisBaseRecord",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.whoisHistoryRecord",
  "abuse": {"@odata.type": "microsoft.graph.security.whoisContact"},
  "admin": {"@odata.type": "microsoft.graph.security.whoisContact"},
  "billing": {"@odata.type": "microsoft.graph.security.whoisContact"},
  "domainStatus": "String",
  "expirationDateTime": "String (timestamp)",
  "firstSeenDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "lastSeenDateTime": "String (timestamp)",
  "lastUpdateDateTime": "String (timestamp)",
  "nameservers": [{"@odata.type": "microsoft.graph.security.whoisNameserver"}],
  "noc": {"@odata.type": "microsoft.graph.security.whoisContact"},
  "rawWhoisText": "String",
  "registrant": {"@odata.type": "microsoft.graph.security.whoisContact"},
  "registrar": {"@odata.type": "microsoft.graph.security.whoisContact"},
  "registrationDateTime": "String (timestamp)",
  "technical": {"@odata.type": "microsoft.graph.security.whoisContact"},
  "whoisServer": "String",
  "zone": {"@odata.type": "microsoft.graph.security.whoisContact"}
}
```
