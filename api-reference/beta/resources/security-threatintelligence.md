---
title: "threatIntelligence resource type"
description: "Provides APIs to retrieve threat intelligence information, such as about a host or an article on a threat."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# threatIntelligence resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides APIs to retrieve threat intelligence information, such as about a host or an article on a threat.

Microsoft Threat Intelligence APIs delivers world-class threat intelligence to help protect your organization from modern cyber threats. Using Microsoft Threat Intelligence APIs you can identify adversaries and their operations, accelerate detection and remediation, and enhance your security investments and workflows.

Microsoft Threat Intelligence APIs (preview) allow you to operationalize intelligence found within the user interface. This includes finished intelligence in the forms of articles and intel profiles, machine intelligence including indicators of compromise (IoCs) and reputation verdicts, and finally, enrichment data including passive DNS, cookies, components, and trackers.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List articles](../api/security-article-list.md)|[microsoft.graph.security.article](../resources/security-article.md) collection|Get a list of **article** objects, including their properties and relationships.|
|[Get article](../api/security-article-get.md)|[microsoft.graph.security.article](../resources/security-article.md) |Read the properties and relationships of an **article** object.|
|[Get articleIndicator](../api/security-articleindicator-get.md)|[microsoft.graph.security.articleIndicator](../resources/security-articleindicator.md) |Get the **articleIndicator** resources from the **articleIndicators** navigation property.|
|[Get host](../api/security-host-get.md)|[microsoft.graph.security.host](../resources/security-host.md) |Get the **host** resources from the **hosts** navigation property.|
|[Get hostComponent](../api/security-hostcomponent-get.md)|[microsoft.graph.security.hostComponent](../resources/security-hostcomponent.md) |Get the **hostComponent** resources.|
|[Get hostCookie](../api/security-hostcookie-get.md)|[microsoft.graph.security.hostCookie](../resources/security-hostcookie.md) |Get the **hostCookie** resources from the **hostCookies** navigation property.|
|[Get hostTracker](../api/security-hosttracker-get.md)|[microsoft.graph.security.hostTracker](../resources/security-hosttracker.md) |Get the **hostTracker** resource from the **trackers** navigation property.|
|[Get intelProfileIndicators](../api/security-intelligenceprofileindicator-get.md)|[microsoft.graph.security.intelligenceProfileIndicator](../resources/security-intelligenceprofileindicator.md) collection|Get the **intelligenceProfileIndicator** resources from the **intelProfileIndicators** navigation property.|
|[List intelProfiles](../api/security-intelligenceprofile-list.md)|[microsoft.graph.security.intelligenceProfile](../resources/security-intelligenceprofile.md) collection|Get the **intelligenceProfile** resources from the **intelProfiles** navigation property.|
|[Get hostTracker](../api/security-hosttracker-get.md)|[microsoft.graph.security.hostTracker](../resources/security-hosttracker.md) |Get the **hostTracker** resource from the **trackers** navigation property.|
|[Get passiveDnsRecord](../api/security-passivednsrecord-get.md)|[microsoft.graph.security.passiveDnsRecord](../resources/security-passivednsrecord.md) |Get the **hostTracker** resource from the **trackers** navigation property.|
|[Get vulnerabilities](../api/security-vulnerability-get.md)|[microsoft.graph.security.vulnerability](../resources/security-vulnerability.md) |Get the **vulnerability** resources from the **vulnerabilities** navigation property.|

## Properties

None.

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|articles|[microsoft.graph.security.article](../resources/security-article.md) collection|A list of **article** objects.|
|articleIndicators|[microsoft.graph.security.articleIndicator](../resources/security-articleindicator.md) collection|Refers to indicators of threat or compromise highlighted in an [microsoft.graph.security.article](../resources/security-article.md). **Note**: List retrieval is not yet supported.|
|hosts|[microsoft.graph.security.host](../resources/security-host.md) collection|Refers to [microsoft.graph.security.host](../resources/security-host.md) objects that Microsoft Threat Intelligence has observed. **Note**: List retrieval is not yet supported.|
|hostComponents|[microsoft.graph.security.hostComponent](../resources/security-hostcomponent.md) collection|Retrieve details about [microsoft.graph.security.hostComponent](../resources/security-hostcomponent.md) objects. **Note**: List retrieval is not yet supported.|
|hostCookies|[microsoft.graph.security.hostCookie](../resources/security-hostcookie.md) collection|Retrieve details about [microsoft.graph.security.hostCookie](../resources/security-hostcookie.md) objects. **Note**: List retrieval is not yet supported.|
|hostTrackers|[microsoft.graph.security.hostTracker](../resources/security-hosttracker.md) collection|Retrieve details about [microsoft.graph.security.hostTracker](../resources/security-hosttracker.md) objects. **Note**: List retrieval is not yet supported.|
|intelProfiles|[microsoft.graph.security.intelligenceProfile](../resources/security-intelligenceprofile.md) collection|A list of **intelligenceProfile** objects.|
|intelProfileIndicators|[microsoft.graph.security.intelligenceProfileIndicator](../resources/security-intelligenceprofileindicator.md) collection|Refers to indicators of threat or compromise highlighted in a [microsoft.graph.security.intelligenceProfile](../resources/security-intelligenceprofile.md). **Note**: List retrieval is not yet supported.|
|passiveDnsRecords|[microsoft.graph.security.passiveDnsRecord](../resources/security-passivednsrecord.md) collection|Retrieve details about [microsoft.graph.security.passiveDnsRecord](../resources/security-passivednsrecord.md) objects. **Note**: List retrieval is not yet supported.|
|vulnerabilities|[microsoft.graph.security.vulnerability](../resources/security-vulnerability.md) collection|Retrieve details about [microsoft.graph.security.vulnerabilities](../resources/security-vulnerability.md). **Note**: List retrieval is not yet supported.|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.threatIntelligence",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.threatIntelligence"
}
```
