---
title: "Use the Microsoft Graph security API"
description: "The Microsoft Graph security API provides a unified interface and schema to integrate with security solutions from Microsoft and ecosystem partners."
ms.localizationpriority: high
author: "preetikr"
ms.subservice: "security"
doc_type: conceptualPageType
ms.date: 09/18/2024
---

# Use the Microsoft Graph security API

The Microsoft Graph security API provides a unified interface and schema to integrate with security solutions from Microsoft and ecosystem partners. This empowers customers to streamline security operations and better defend against increasing cyber threats. The Microsoft Graph security API federates queries to all onboarded security providers and aggregates responses. Use the Microsoft Graph security API to build applications that:

- Consolidate and correlate security alerts from multiple sources.
- Pull and investigate all incidents and alerts from services that are part of or integrated with Microsoft 365 Defender.
- Unlock contextual data to inform investigations.
- Automate security tasks, business processes, workflows, and reporting.
- Send threat indicators to Microsoft products for customized detections.
- Invoke actions to in response to new threats.
- Provide visibility into security data to enable proactive risk management.

The Microsoft Graph security API provides key features as described in the following sections.

## Advanced hunting
Advanced hunting is a query-based threat-hunting tool that lets you explore up to 30 days of raw data. You can proactively inspect events in your network to locate threat indicators and entities. The flexible access to data enables unconstrained hunting for both known and potential threats.

Use [runHuntingQuery](../api/security-security-runhuntingquery.md) to run a [Kusto Query Language](/azure/data-explorer/kusto/query/) (KQL) query on data stored in Microsoft 365 Defender. Use the returned result set to enrich an existing investigation or to uncover undetected threats in your network. 

### Quotas and resource allocation


The following conditions relate to all queries.

1. Queries explore and return data from the past 30 days.
2. Results can return up to 100,000 rows.
3. You can make up to at least 45 calls per minute per tenant. The number of calls varies per tenant based on its size.
4. Each tenant is allocated CPU resources, based on the tenant size. Queries are blocked if the tenant reaches 100% of the allocated resources until after the next 15-minute cycle. To avoid blocked queries due to excess consumption, follow the guidance in [Optimize your queries to avoid hitting CPU quotas](/microsoft-365/security/defender/advanced-hunting-best-practices). 
5. If a single request runs for more than three minutes, it times out and returns an error.
6. A `429` HTTP response code indicates that you reached the allocated CPU resources, either by the number of requests sent or by allotted running time. Read the response body to understand the limit you reached. 

## Alerts
Alerts are detailed warnings about suspicious activities in a customer's tenant that Microsoft or partner security providers identified and flagged for action. Attacks typically employ various techniques against different types of entities, such as devices, users, and mailboxes. The result is alerts from multiple security providers for multiple entities in the tenant. Piecing the individual alerts together to gain insight into an attack can be challenging and time-consuming.

The security API offers two types of alerts that aggregate other alerts from security providers and make analyzing attacks and determining responses easier: 
- [Alerts and incidents](#alerts-and-incidents) - these are the latest generation of alerts in the Microsoft Graph security API. They're represented by the [alert](security-alert.md) resource and its collection, [incident](security-incident.md) resource, defined in the `microsoft.graph.security` namespace.
- [Legacy alerts](#legacy-alerts) - these are the first generation of alerts in the Microsoft Graph security API. They're represented by the [alert](alert.md) resource defined in the `microsoft.graph` namespace.

### Alerts and incidents

These [alert](security-alert.md) resources first pull alert data from security provider services, that are either part of or integrated with [Microsoft 365 Defender](/microsoft-365/security/defender/microsoft-365-defender?view=o365-worldwide&preserve-view=true). Then they consume the data to return rich, valuable clues about a completed or ongoing attack, the impacted assets, and associated [evidence](security-alertevidence.md). In addition, they automatically correlate other alerts with the same attack techniques or the same attacker into an [incident](security-incident.md) to provide a broader context of an attack. They recommend response and remediation actions, offering consistent actionability across all the different providers. The rich content makes it easier for analysts to collectively investigate and respond to threats.

Alerts from the following security providers are available via these rich alerts and incidents:
- [Microsoft Entra ID Protection](/azure/active-directory/identity-protection/overview-identity-protection)
- [Microsoft 365 Defender](/microsoft-365/security/defender/microsoft-365-defender?view=o365-worldwide&preserve-view=true)
- [Microsoft Defender for Cloud Apps](/cloud-app-security/monitor-alerts) 
- [Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/microsoft-defender-endpoint?view=o365-worldwide&preserve-view=true)
- [Microsoft Defender for Identity](/defender-for-identity/alerts-overview) 
- [Microsoft Defender for Office 365](/microsoft-365/security/office-365-security/overview?view=o365-worldwide&preserve-view=true)
- [Microsoft Purview Data Loss Prevention](/microsoft-365/compliance/dlp-learn-about-dlp?view=o365-worldwide&preserve-view=true)
- [Microsoft Purview Insider Risk Management](/purview/insider-risk-management?view=o365-worldwide&preserve-view=true) 

### Legacy alerts

> [!NOTE]
> The legacy alerts API is deprecated and will be removed by April 2026. We recommend that you migrate to the new [alerts and incidents](/graph/api/resources/security-alert) API.

The legacy [alert](alert.md) resources federate calling of supported Azure and Microsoft 365 Defender security providers. They aggregate common alert data among the different domains to allow applications to unify and streamline management of security issues across all integrated solutions. They enable applications to correlate alerts and context to improve threat protection and response.

The legacy version of the security API offers the [alert](alert.md) resource that federates calling of supported Azure and Microsoft 365 Defender security providers. This **alert** resource aggregates alert data that’s common among the different domains to allow applications to unify and streamline management of security issues across all integrated solutions. This enables applications to correlate alerts and context to improve threat protection and response. 

With the alert update capability, you can sync the status of specific alerts across different security products and services that are integrated with the Microsoft Graph security API by updating your **alert** entity.

Alerts from the following providers are available via the **alert** resource. Support for GET alerts, PATCH alerts, and subscribe (via webhooks) is indicated in the following table.

| Security provider | <p align="center">GET alert</p>| <p align="center">PATCH alert</p>| <p align="center">Subscribe to alert</p>|
|:------------------|:---------|:-----------|:------------------|
|[Microsoft Entra ID Protection](/azure/active-directory/identity-protection/playbook) | <p align="center">&#x2713;</p> | <p align="center">[File issue](https://github.com/microsoftgraph/security-api-solutions/issues/new) *</p> | <p align="center">&#x2713;</p> |
|Microsoft 365 <ul><li> [Default](/office365/securitycompliance/alert-policies#default-alert-policies)</li> <li>[Cloud App Security](/office365/securitycompliance/anomaly-detection-policies-in-ocas)</li><li>Custom Alert</li></ul> | <p align="center">&#x2713;</p> | <p align="center"> [File issue](https://github.com/microsoftgraph/security-api-solutions/issues/new) </p> | <p align="center"> [File issue](https://github.com/microsoftgraph/security-api-solutions/issues/new) </p> |
| [Microsoft Defender for Cloud Apps](/cloud-app-security/monitor-alerts) | <p align="center">&#x2713;</p> | <p align="center">[File issue](https://github.com/microsoftgraph/security-api-solutions/issues/new) *</p> | <p align="center">&#x2713;</p> |
|[Microsoft Defender for Endpoint](/windows/security/threat-protection/microsoft-defender-atp/attack-simulations) **| <p align="center">&#x2713;</p> | <p align="center">&#x2713;</p> | <p align="center"> [File issue](https://github.com/microsoftgraph/security-api-solutions/issues/new) </p> |
|[Microsoft Defender for Identity](/defender-for-identity/understanding-security-alerts#security-alert-categories) ***| <p align="center">&#x2713;</p> | <p align="center">[File issue](https://github.com/microsoftgraph/security-api-solutions/issues/new) *</p> | <p align="center">&#x2713;</p> |
|[Microsoft Sentinel](/azure/sentinel/quickstart-get-visibility) (formerly Azure Sentinel)| <p align="center">&#x2713;</p> | <p align="center">Not supported in Microsoft Sentinel </p> | <p align="center">&#x2713;</p> |
> **Note:** New providers are continuously onboarding to the Microsoft Graph security ecosystem. To request new providers or for extended support from existing providers, [file an issue in the Microsoft Graph security GitHub repo](https://github.com/microsoftgraph/security-api-solutions/issues/new).

\* File issue: Alert status gets updated across Microsoft Graph security API integrated applications but not reflected in the provider’s management experience.

\*\* Microsoft Defender for Endpoint requires additional [user roles](/windows/security/threat-protection/microsoft-defender-atp/user-roles) to those required by the Microsoft Graph security API. Only the users in both Microsoft Defender for Endpoint and Microsoft Graph security API roles can access the Microsoft Defender for Endpoint data. Because application-only authentication isn't limited by this, we recommend that you use an application-only authentication token.

\*\*\* Microsoft Defender for Identity alerts are available via the Microsoft Defender for Cloud Apps integration. This means you get Microsoft Defender for Identity alerts only if you joined Unified SecOps and connected Microsoft Defender for Identity to Microsoft Defender for Cloud Apps. Learn more about [how to integrate Microsoft Defender for Identity and Microsoft Defender for Cloud Apps](/defender-for-identity/mcas-integration).

## Attack simulation and training

[Attack simulation and training](/microsoft-365/security/office-365-security/attack-simulation-training) is part of [Microsoft Defender for Office 365](/microsoft-365/security/office-365-security/defender-for-office-365?view=o365-worldwide&preserve-view=true). This service lets users in a tenant experience a realistic benign phishing attack and learn from it. Social engineering simulation and training experiences for end users help reduce the risk of users being breached via those attack techniques. The attack simulation and training API enables tenant administrators to view launched [simulation](simulation.md) exercises and trainings, and get [reports](report-m365defender-reports-overview.md) on derived insights into online behaviors of users in the phishing simulations.


## eDiscovery

[Microsoft Purview eDiscovery (Premium)](/microsoft-365/compliance/overview-ediscovery-20) provides an end-to-end workflow to preserve, collect, analyze, review, and export content that's responsive to your organization's internal and external investigations.

## Identities

### Health issues

The Microsoft Defender for Identity health issues API allows you to monitor the health status of your sensors and agents across your hybrid identity infrastructure. You can use the health issues API to retrieve information about the current health issues of your sensors, such as the issue type, status, configuration, and severity. You can also use this API to identify and resolve any issues that might affect the functionality or security of your sensors and agents.

> **Note:** The Microsoft Defender for Identity health issues API is only available on the Defender for Identity plan or Microsoft 365 E5/A5/G5/F5 Security service plans.

### Sensors
The Defender for Identity sensors management API allows you to create detailed reports of the sensors in your workspace, including information about the server name, sensor version, type, state, and health status. It also enables you to manage sensor settings, such as adding descriptions, enabling or disabling delayed updates, and specifying the domain controller that the sensor connects to for querying Entra ID.

## Incidents

An [incident](security-incident.md) is a collection of correlated  [alerts](security-alert.md) and associated data that make up the story of an attack. Incident management is part of Microsoft 365 Defender and is available in the Microsoft 365 Defender portal (https://security.microsoft.com/). 

Microsoft 365 services and apps create  alerts  when they detect a suspicious or malicious event or activity. Individual alerts provide valuable clues about a completed or ongoing attack. However, attacks typically employ various techniques against different types of entities, such as devices, users, and mailboxes. The result is multiple  alerts for multiple entities in your tenant. 

Because piecing the individual alerts together to gain insight into an attack can be challenging and time-consuming, Microsoft 365 Defender automatically aggregates the alerts and their associated information into an [incident](security-incident.md). 

Grouping related alerts into an incident gives you a comprehensive view of an attack. For example, you can see: 

- Where the attack started. 
- What tactics were used. 
- How far the attack went into your tenant. 
- The scope of the attack, such as how many devices, users, and mailboxes were impacted. 
- All of the data associated with the attack. 

The  [incident](security-incident.md) resource and its APIs allow you to sort through incidents to create an informed cybersecurity response. It exposes a collection of incidents, with their related  [alerts](security-alert.md), that were flagged in your network, within the time range you specified in your environment retention policy. 


## Information protection

The Microsoft Graph threat assessment API helps organizations assess the threat received by any user in a tenant. This empowers customers to report spam emails, phishing URLs, or malware attachments they receive to Microsoft. The policy check result and rescan result can help tenant administrators understand the threat scanning verdict and adjust their organizational policy.


## Records management

Most organizations need to manage data to proactively comply with industry regulations and internal policies, reduce risk in the event of litigation or a security breach, and let people effectively and agilely share knowledge that is current and relevant to them. You can use the [records management APIs](../resources/security-recordsmanagement-overview.md) to systematically apply [retention labels](security-retentionlabel.md) to different types of content that require different retention settings. For example, you can configure the start of the retention period from when the content was created, last modified, labeled, or when an event occurs for a particular event type. Further, you can use [file plan descriptors](security-fileplandescriptor.md) to improve the manageability of these retention labels.

## Secure Score

[Microsoft Secure Score](https://techcommunity.microsoft.com/t5/Security-Privacy-and-Compliance/A-new-home-and-an-all-new-look-for-Microsoft-Secure-Score/ba-p/529641) is a security analytics solution that gives you visibility into your security portfolio and how to improve it. With a single score, you can better understand what you did to reduce your risk in Microsoft solutions. You can also compare your score with other organizations and see how your score has been trending over time. The Microsoft Graph security [secureScore](securescore.md) and [secureScoreControlProfile](securescorecontrolprofile.md) entities help you balance your organization's security and productivity needs while enabling the appropriate mix of security features. You can also project what your score would be after you adopt security features.

## Threat intelligence

Microsoft Defender Threat Intelligence delivers world-class threat intelligence to help protect your organization from modern cyber threats. You can use Threat Intelligence to identify adversaries and their operations, accelerate detection and remediation, and enhance your security investments and workflows.

The threat intelligence APIs allow you to operationalize intelligence found within the user interface. This includes finished intelligence in the forms of articles and intel profiles, machine intelligence such as IoCs and reputation verdicts, and enrichment data such as passive DNS, cookies, components, and trackers.

## Common use cases

The following are some of the most popular requests for working with the Microsoft Graph security API.

| **Use cases**   | **REST resources** | **Try it in Graph Explorer** |
|:---------------|:--------|:----------|
|Update secure score control profiles|[Update secureScoreControlProfile](../api/securescorecontrolprofile-update.md) |[https://graph.microsoft.com/v1.0/security/secureScoreControlProfiles/{id}](https://developer.microsoft.com/graph/graph-explorer?request=security/secureScoreControlProfiles/{id}&method=PATCH&version=v1.0&GraphUrl=https://graph.microsoft.com)|
| **Alerts and incidents**|||
| List alerts | [List alerts](../api/security-list-alerts_v2.md) | [https://graph.microsoft.com/v1.0/security/alerts_v2](https://developer.microsoft.com/graph/graph-explorer?request=security/alerts_v2&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com) |
| Update alert | [Update alert](../api/security-alert-update.md) | [https://graph.microsoft.com/v1.0/security/alerts/{id}](https://developer.microsoft.com/graph/graph-explorer?request=security/alerts/{id}&method=PATCH&version=v1.0&GraphUrl=https://graph.microsoft.com) |
| List incidents | [List incidents](../api/security-list-incidents.md) | [https://graph.microsoft.com/v1.0/security/incidents](https://developer.microsoft.com/graph/graph-explorer?request=security/incidents&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com) |
| List incidents with alerts| [List incidents](../api/security-list-incidents.md) | [https://graph.microsoft.com/v1.0/security/incidents?$expand=alerts](https://developer.microsoft.com/graph/graph-explorer?request=security/incidents?$expand=alerts&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com) |
| Update incident | [Update incident](../api/security-incident-update.md) | [https://graph.microsoft.com/v1.0/security/incidents/{id}](https://developer.microsoft.com/graph/graph-explorer?request=security/incidents/{id}&method=PATCH&version=v1.0&GraphUrl=https://graph.microsoft.com) |
| **eDiscovery**|||
|List eDiscovery cases|[List eDiscoveryCases](../api/security-casesroot-list-ediscoverycases.md)|[https://graph.microsoft.com/v1.0/security/cases/eDiscoveryCases](https://developer.microsoft.com/graph/graph-explorer?request=security%2Fcases%2FeDiscoverycases&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com)|
|List eDiscovery case operations|[List caseOperations](../api/security-ediscoverycase-list-operations.md)|[https://graph.microsoft.com/v1.0/security/cases/ediscoveryCases/{id}/operations](https://developer.microsoft.com/graph/graph-explorer?request=security%2Fcases%2FeDiscoverycases%2F%7Bid%7D%2Foperations&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com)|
| **Identities**|||
| List health issues | [List health issues](../api/security-identitycontainer-list-healthissues.md) | [https://graph.microsoft.com/v1.0/security/identities/healthIssues](https://developer.microsoft.com/graph/graph-explorer?request=security/identities/healthIssues&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com) |
| List sensors | [List sensors](../api/security-identitycontainer-list-sensors.md) | [https://graph.microsoft.com/v1.0/security/identities/sensors](https://developer.microsoft.com/graph/graph-explorer?request=security/identities/sensors&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com) | 
| **Legacy alerts**|||
| List alerts | [List alerts](../api/alert-list.md) | [https://graph.microsoft.com/v1.0/security/alerts](https://developer.microsoft.com/graph/graph-explorer?request=security/alerts&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com) |
| Update alerts | [Update alert](../api/alert-update.md) | [https://graph.microsoft.com/v1.0/security/alerts/{alert-id}](https://developer.microsoft.com/graph/graph-explorer?request=security/alerts/{alert-id}&method=PATCH&version=v1.0&GraphUrl=https://graph.microsoft.com) |
| **Secure scores**|||
|List secure scores|[List secureScores](../api/security-list-securescores.md) |[https://graph.microsoft.com/v1.0/security/secureScores](https://developer.microsoft.com/graph/graph-explorer?request=security/secureScores&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com)|
|Get secure score|[Get secureScore](../api/securescore-get.md) |[https://graph.microsoft.com/v1.0/security/secureScores/{id}](https://developer.microsoft.com/graph/graph-explorer?request=security/secureScores/{id}&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com)|
|List secure score control profiles|[List secureScoreControlProfiles](../api/security-list-securescorecontrolprofiles.md) |[https://graph.microsoft.com/v1.0/security/secureScoreControlProfiles](https://developer.microsoft.com/graph/graph-explorer?request=security/secureScoreControlProfiles&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com)|
|Get secure score control profile|[Get secureScoreControlProfile](../api/securescorecontrolprofile-get.md) |[https://graph.microsoft.com/v1.0/security/secureScoreControlProfiles/{id}](https://developer.microsoft.com/graph/graph-explorer?request=security/secureScoreControlProfiles/{id}&method=GET&version=v1.0&GraphUrl=https://graph.microsoft.com)|


You can use Microsoft Graph [webhooks](/graph/webhooks) to subscribe to and receive notifications about updates to Microsoft Graph security entities.

## Resources

Code and contribute to these Microsoft Graph security API samples:

- [ASP.NET (C#) sample](https://github.com/microsoftgraph/aspnet-security-api-sample)
- [Python sample](https://github.com/microsoftgraph/python-security-rest-sample)
- [Node.js (JavaScript) sample](https://github.com/microsoftgraph/nodejs-security-sample)

Engage with the community:

- [Join the tech community](https://techcommunity.microsoft.com/t5/microsoft-graph-security-api/bd-p/SecurityGraphAPI)
- [Discuss on StackOverflow](https://stackoverflow.com/questions/tagged/microsoft-graph-security)

## Next steps

The Microsoft Graph security API can open up new ways for you to engage with different security solutions from Microsoft and its partners. Follow these steps to get started:

- Drill down into [alerts](alert.md), [secureScore](securescore.md), and [secureScoreControlProfiles](securescorecontrolprofile.md).
- Try the API in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer). Under **Sample Queries**, choose **show more samples** and set the Security category to **on**.
- Try [subscribing to and receiving notifications](/graph/webhooks) on entity changes.

## Related content

[Code and contribute](https://github.com/microsoftgraph/security-api-solutions/blob/master/CONTRIBUTING.md) to this Microsoft Graph security API sample:

- [PowerShell sample](/powershell/scripting/developer/prog-guide/windows-powershell-sample-code)

Explore other options to connect with the Microsoft Graph security API:

- [Microsoft Graph security connectors for Logic Apps, Flow and Power Apps](/azure/connectors/connectors-integrate-security-operations-create-api-microsoft-graph-security)
- [Jupyter Notebook samples](/azure/machine-learning/samples-notebooks)

Engage with the community:

- [Join the tech community](https://techcommunity.microsoft.com/t5/microsoft-graph-security-api/bd-p/SecurityGraphAPI)
- [Discuss on StackOverflow](https://stackoverflow.com/questions/tagged/microsoft-graph-security)
