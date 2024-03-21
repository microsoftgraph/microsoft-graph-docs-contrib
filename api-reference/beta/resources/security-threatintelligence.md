---
title: "threatIntelligence resource type"
description: "Provides APIs to retrieve threat intelligence information, such as about a host or an article on a threat."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# threatIntelligence resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [threatintelligence-api-disclaimer](../../includes/threatintelligence-api-disclaimer.md)]

Provides APIs to retrieve threat intelligence information, such as about a host or an article on a threat.

The Microsoft Graph threat intelligence API delivers world-class threat intelligence to help protect your organization from modern cyber threats. Using threat intelligence APIs, you can identify adversaries and their operations, accelerate detection and remediation, and enhance your security investments and workflows.

The threat intelligence API allows you to operationalize intelligence found within the user interface. This includes finished intelligence in the forms of articles and intel profiles, machine intelligence including indicators of compromise (IoCs) and reputation verdicts, and finally, enrichment data including passive DNS, cookies, components, and trackers.

## Methods

| Method                                                                             | Return type                                                                                                               | Description                                                                                                                                                 |
| :--------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------ | :---------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [List articles](../api/security-threatintelligence-list-articles.md)               | [microsoft.graph.security.article](../resources/security-article.md) collection                                           | Get a list of **article** objects, including their properties and relationships.                                                                            |
| [Get article](../api/security-article-get.md)                                      | [microsoft.graph.security.article](../resources/security-article.md)                                                      | Read the properties and relationships of an **article** object.                                                                                             |
| [Get articleIndicator](../api/security-articleindicator-get.md)                    | [microsoft.graph.security.articleIndicator](../resources/security-articleindicator.md)                                    | Get the **articleIndicator** resources from the **articleIndicators** navigation property.                                                                  |
| [Get host](../api/security-host-get.md)                                            | [microsoft.graph.security.host](../resources/security-host.md)                                                            | Get a list of **host** resources.                                                                                                                           |
| [Get hostComponent](../api/security-hostcomponent-get.md)                          | [microsoft.graph.security.hostComponent](../resources/security-hostcomponent.md)                                          | Get the properties and relationships of a **hostComponent** object.                                                                                         |
| [Get hostCookie](../api/security-hostcookie-get.md)                                | [microsoft.graph.security.hostCookie](../resources/security-hostcookie.md)                                                | Get a list of **hostCookie** resources.                                                                                                                     |
| [Get hostPair](../api/security-hostpair-get.md)                                    | [microsoft.graph.security.host](../resources/security-hostpair.md)                                                        | Read the properties and relationships of a **hostPair** object.                                                                                             |
| [List childHostPairs](../api/security-host-list-childhostpairs.md)                 | [microsoft.graph.security.host](../resources/security-hostpair.md)                                                        | Get a list of **hostPair** resources.                                                                                                                       |
| [List hostPairs](../api/security-host-list-hostpairs.md)                           | [microsoft.graph.security.host](../resources/security-hostpair.md)                                                        | Get a list of **hostPair** resources.                                                                                                                       |
| [List parentHostPairs](../api/security-host-list-parenthostpairs.md)               | [microsoft.graph.security.host](../resources/security-hostpair.md)                                                        | Get a list of **hostPair** resources.                                                                                                                       |
| [Get hostPort](../api/security-hostport-get.md)                                    | [microsoft.graph.security.hostPort](../resources/security-hostport.md)                                                    | Get the properties and relationships of a **hostPort** object.                                                                                              |
| [Get hostTracker](../api/security-hosttracker-get.md)                              | [microsoft.graph.security.hostTracker](../resources/security-hosttracker.md)                                              | Get a list of **hostTracker** resources.                                                                                                                    |
| [Get intelProfileIndicators](../api/security-intelligenceprofileindicator-get.md)  | [microsoft.graph.security.intelligenceProfileIndicator](../resources/security-intelligenceprofileindicator.md) collection | Get a list of **intelligenceProfileIndicator** resources.                                                                                                   |
| [List intelProfiles](../api/security-threatintelligence-list-intelprofiles.md)     | [microsoft.graph.security.intelligenceProfile](../resources/security-intelligenceprofile.md) collection                   | Get a list of **intelligenceProfile** resources.                                                                                                            |
| [Get hostTracker](../api/security-hosttracker-get.md)                              | [microsoft.graph.security.hostTracker](../resources/security-hosttracker.md)                                              | Get a list of **hostTracker** resources.                                                                                                                    |
| [Get passiveDnsRecord](../api/security-passivednsrecord-get.md)                    | [microsoft.graph.security.passiveDnsRecord](../resources/security-passivednsrecord.md)                                    | Get the properties and relationships of a **hostTracker** object.                                                                                           |
| [Get subdomain](../api/security-subdomain-get.md)                                  | [microsoft.graph.security.subdomain](../resources/security-subdomain.md)                                                  | Get the properties and relationships of a **subdomain** object.                                                                                             |
| [Get vulnerabilities](../api/security-vulnerability-get.md)                        | [microsoft.graph.security.vulnerability](../resources/security-vulnerability.md)                                          | Get the properties and relationships of a **vulnerability** object.                                                                                         |
| [Get sslCertificate](../api/security-sslcertificate-get.md)                        | [microsoft.graph.security.sslCertificate](../resources/security-sslcertificate.md)                                        | Get the properties and relationships of an [sslCertificate](../resources/security-sslcertificate.md) object.                                                |
| [List sslCertificates](../api/security-threatintelligence-list-sslcertificates.md) | [microsoft.graph.security.sslCertificate](../resources/security-sslcertificate.md) collection                             | Get a list of [sslCertificate](../resources/security-sslcertificate.md) objects and their properties.                                                       |
| [Get hostSslCertificate](../api/security-hostsslcertificate-get.md)                | [microsoft.graph.security.hostSslCertificate](../resources/security-hostsslcertificate.md)                                | Get the properties and relationships of a [hostSslCertificate](../resources/security-hostsslcertificate.md) object.                                         |
| [List hostSslCertificates](../api/security-host-list-sslcertificates.md)           | [microsoft.graph.security.hostSslCertificate](../resources/security-hostsslcertificate.md) collection                     | Get a list of [hostSslCertificate](../resources/security-hostsslcertificate.md) objects from the [host](../resources/security-host.md) navigation property. |
| [List whoisRecords](../api/security-threatintelligence-list-whoisrecords.md)       | [microsoft.graph.security.whoisRecord](../resources/security-vulnerability.md)                                            | Get a list of [whoisRecord](../resources/security-whoisrecord.md) objects.                                                                                  |
| [Get whoisHistoryRecord](../api/security-whoishistoryrecord-get.md)                | [microsoft.graph.security.whoisHistoryRecord](../resources/security-whoishistoryrecord.md)                                | Read the properties and relationships of a [whoisHistoryRecord](../resources/security-whoishistoryrecord.md) object.                                        |

## Properties

None.

## Relationships

| Relationship           | Type                                                                                                                      | Description                                                                                                                                                                            |
| :--------------------- | :------------------------------------------------------------------------------------------------------------------------ | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| articleIndicators      | [microsoft.graph.security.articleIndicator](../resources/security-articleindicator.md) collection                         | Refers to indicators of threat or compromise highlighted in an [article](../resources/security-article.md).<br/>**Note**: List retrieval is not yet supported.                         |
| articles               | [microsoft.graph.security.article](../resources/security-article.md) collection                                           | A list of **article** objects.                                                                                                                                                         |
| hostComponents         | [microsoft.graph.security.hostComponent](../resources/security-hostcomponent.md) collection                               | Retrieve details about [hostComponent](../resources/security-hostcomponent.md) objects.<br/>**Note**: List retrieval is not yet supported.                                             |
| hostCookies            | [microsoft.graph.security.hostCookie](../resources/security-hostcookie.md) collection                                     | Retrieve details about [hostCookie](../resources/security-hostcookie.md) objects.<br/>**Note**: List retrieval is not yet supported.                                                   |
| hostPairs              | [microsoft.graph.security.hostPair](../resources/security-hostpair.md) collection                                         | Retrieve details about [hostTracker](../resources/security-hostpair.md) objects.<br/>**Note**: List retrieval is not yet supported.                                                    |
| hostPorts              | [microsoft.graph.security.hostPort](../resources/security-hostport.md) collection                                         | Retrieve details about [hostPort](../resources/security-hostport.md) objects.<br/>**Note**: List retrieval is not yet supported.                                                       |
| hostSslCertificates    | [microsoft.graph.security.hostSslCertificate](../resources/security-hostsslcertificate.md) collection                     | Retrieve details about [hostSslCertificate](../resources/security-hostsslcertificate.md) objects.<br/>**Note**: List retrieval is not yet supported.                                   |
| hostTrackers           | [microsoft.graph.security.hostTracker](../resources/security-hosttracker.md) collection                                   | Retrieve details about [hostTracker](../resources/security-hosttracker.md) objects.<br/>**Note**: List retrieval is not yet supported.                                                 |
| hosts                  | [microsoft.graph.security.host](../resources/security-host.md) collection                                                 | Refers to [host](../resources/security-host.md) objects that Microsoft Threat Intelligence has observed.<br/>**Note**: List retrieval is not yet supported.                            |
| intelProfileIndicators | [microsoft.graph.security.intelligenceProfileIndicator](../resources/security-intelligenceprofileindicator.md) collection | Refers to indicators of threat or compromise highlighted in an [intelligenceProfile](../resources/security-intelligenceprofile.md).<br/>**Note**: List retrieval is not yet supported. |
| intelProfiles          | [microsoft.graph.security.intelligenceProfile](../resources/security-intelligenceprofile.md) collection                   | A list of **intelligenceProfile** objects.                                                                                                                                             |
| passiveDnsRecords      | [microsoft.graph.security.passiveDnsRecord](../resources/security-passivednsrecord.md) collection                         | Retrieve details about [passiveDnsRecord](../resources/security-passivednsrecord.md) objects.<br/>**Note**: List retrieval is not yet supported.                                       |
| sslCertificates        | [microsoft.graph.security.sslCertificate](../resources/security-sslcertificate.md) collection                             | Retrieve details about [sslCertificate](../resources/security-sslcertificate.md) objects.<br/>**Note**: List retrieval is not yet supported.                                           |
| subdomains             | [microsoft.graph.security.subdomain](../resources/security-subdomain.md) collection                                       | Retrieve details about the [subdomain](../resources/security-subdomain.md).<br/>**Note**: List retrieval is not yet supported.                                                         |
| vulnerabilities        | [microsoft.graph.security.vulnerability](../resources/security-vulnerability.md) collection                               | Retrieve details about [vulnerabilities](../resources/security-vulnerability.md).<br/>**Note**: List retrieval is not yet supported.                                                   |
| whoisHistoryRecords    | [microsoft.graph.security.whoisHistoryRecord](../resources/security-whoishistoryrecord.md) collection                     | Retrieve details about [whoisHistoryRecord](../resources/security-whoishistoryrecord.md) objects.<br/>**Note:** List retrieval is not yet supported.                                   |
| whoisRecords           | [microsoft.graph.security.whoisRecord](../resources/security-whoisrecord.md) collection                                   | A list of [whoisRecord](../resources/security-whoisrecord.md) objects.                                                                                                                 |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.threatIntelligence",
  "openType": false
}
-->

```json
{
  "@odata.type": "#microsoft.graph.security.threatIntelligence"
}
```
