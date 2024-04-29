---
title: "Use the Microsoft Graph security API"
description: "The Microsoft Graph security API provides a unified interface and schema to integrate with security solutions from Microsoft and ecosystem partners."
ms.localizationpriority: high
author: "preetikr"
doc_type: conceptualPageType
ms.subservice: "security"
---

# Use the Microsoft Graph security API

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The Microsoft Graph security API provides a unified interface and schema to integrate with security solutions from Microsoft and ecosystem partners. It empowers customers to streamline security operations and better defend against increasing cyber threats. The Microsoft Graph security API federates queries to all onboarded security providers and aggregates responses. Use the Microsoft Graph security API to build applications that:

- Consolidate and correlate security alerts from multiple sources.
- Pull and investigate all incidents and alerts from services that are part of or integrated with Microsoft 365 Defender.
- Unlock contextual data to inform investigations.
- Automate security tasks, business processes, workflows, and reporting.
- Send threat indicators to Microsoft products for customized detections.
- Invoke actions to in response to new threats.
- Provide visibility into security data to enable proactive risk management.

The Microsoft Graph security API provides key features as described in the following sections.

## Actions (preview)

Take immediate action to defend against threats using the [securityAction](securityaction.md) entity. When a security analyst discovers a new indicator, such as a malicious file, URL, domain, or IP address, protection can be instantly enabled in your Microsoft security solutions. Invoke an action for a specific provider, see all actions taken, and cancel an action if needed. Try security actions with [Microsoft Defender for Endpoint](/windows/security/threat-protection/windows-defender-atp/windows-defender-advanced-threat-protection) (formerly Microsoft Defender ATP) to block malicious activity on your Windows endpoints using properties seen in alerts or identified during investigations.

  > **Note:** Currently security actions only support application permissions.

## Advanced hunting
Advanced hunting is a query-based threat-hunting tool that lets you explore up to 30 days of raw data. You can proactively inspect events in your network to locate threat indicators and entities. The flexible access to data enables unconstrained hunting for both known and potential threats.

Use [runHuntingQuery](../api/security-security-runhuntingquery.md) to run a [Kusto Query Language](/azure/data-explorer/kusto/query/) (KQL) query on data stored in Microsoft 365 Defender. Leverage the returned result set to enrich an existing investigation or uncover undetected threats in your network.

### Quotas and resource allocation

1. You can run a query on data from only the last 30 days.

2. The results include a maximum of 100,000 rows.

3. The number of executions is limited per tenant:
   - API calls: Up to 45 requests per minute, and up to 1500 requests per hour.
   - Execution time: 10 minutes of running time every hour and 3 hours of running time a day.

4. The maximal execution time of a single request is 200 seconds.

5. A response code of HTTP 429 means you have reached the quota for either the number of API calls or execution time. Refer to the response body to confirm the limit you have reached.

6. The maximum query result size of a single request cannot exceed 124 MB. Exceeding the size limit results in HTTP 400 Bad Request with the message "Query execution has exceeded the allowed result size. Optimize your query by limiting the number of results and try again."

## Custom detections
You can create advanced hunting [Custom detection rules](/microsoft-365/security/defender/custom-detections-overview) specific to your security operations to allow you to proactively monitor for threats and take action. For instance, you can make custom detection rules that look for known indicators or misconfigured devices. These automatically trigger alerts and any response actions that you specify.

### Quotas

1.	[Get multiple rules](../api/security-detectionrule-list.md): 10 rules per minute per application, 300 rules per hour per application, 600 rules per hour per tenant
2.	[Get a single rule](../api/security-detectionrule-get.md): 100 rules per minute per application, 1,500 rules per hour per application, 1,800 rules per hour per tenant
3.	[Create rule](../api/security-detectionrule-post-detectionRules.md): 10 rules per minute per application, 1,500 rules per hour per application, 1,800 rules per hour per tenant
4.	[Update rule](../api/security-detectionrule-update.md): 100 rules per minute per application, 1,500 rules per hour per application, 1,800 rules per hour per tenant
5.  [Delete rule](../api/security-detectionrule-delete.md): 100 rules per minute per application, 1,500 rules per hour per application, 1,800 rules per hour per tenant

## Alerts
Alerts are detailed warnings about suspicious activities in a customer's tenant that Microsoft or partner security providers have identified and flagged for action. Attacks typically employ various techniques against different types of entities, such as devices, users, and mailboxes. The result is alerts from multiple security providers for multiple entities in the tenant. Piecing the individual alerts together to gain insight into an attack can be challenging and time-consuming.

The beta version of the security API offers two types of alerts that aggregate other alerts from security providers and make analyzing attacks and determining responses easier:
- [Alerts and incidents](#alerts-and-incidents) - the latest generation of alerts in the Microsoft Graph security API. They are represented by the [alert](security-alert.md) resource and its collection, [incident](security-incident.md) resource, defined in the `microsoft.graph.security` namespace.
- [Legacy alerts](#legacy-alerts) - the first generation of alerts in the Microsoft Graph security API. They are represented by the [alert](alert.md) resource defined in the `microsoft.graph` namespace.

### Alerts and incidents

These [alert](security-alert.md) resources first pull alert data from security provider services, that are either part of or integrated with [Microsoft 365 Defender](/microsoft-365/security/defender/microsoft-365-defender?view=o365-worldwide&preserve-view=true). Then they consume the data to return rich, valuable clues about a completed or ongoing attack, the impacted assets, and associated [evidence](security-alertevidence.md). In addition, they automatically correlate other alerts with the same attack techniques or the same attacker into an [incident](security-incident.md) to provide a broader context of an attack. They recommend response and remediation actions, offering consistent actionability across all the different providers. The rich content makes it easier for analysts to investigate and respond to threats collectively.

Alerts from the following security providers are available via these rich alerts and incidents:
- [Microsoft Entra ID Protection](/azure/active-directory/identity-protection/overview-identity-protection)
- [Microsoft 365 Defender](/microsoft-365/security/defender/microsoft-365-defender?view=o365-worldwide&preserve-view=true)
- [Microsoft Defender for Cloud Apps](/cloud-app-security/monitor-alerts)
- [Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/microsoft-defender-endpoint?view=o365-worldwide&preserve-view=true)
- [Microsoft Defender for Identity](/defender-for-identity/alerts-overview)
- [Microsoft Defender for Office 365](/microsoft-365/security/office-365-security/overview?view=o365-worldwide&preserve-view=true)
- [Microsoft Purview Data Loss Prevention](/microsoft-365/compliance/dlp-learn-about-dlp?view=o365-worldwide&preserve-view=true)

### Legacy alerts

> [!NOTE]
> The legacy alerts API is deprecated and will be removed by April 2026. We recommend that you migrate to the new [alerts and incidents](/graph/api/resources/security-alert) API.

The legacy [alert](alert.md) resources federate calling of supported Azure and Microsoft 365 Defender security providers. They aggregate common alert data among the different domains to allow applications to unify and streamline the management of security issues across all integrated solutions. They enable applications to correlate alerts and context to improve threat protection and response.

With the alert update capability, you can sync the status of specific alerts across different security products and services that are integrated with the Microsoft Graph security API by updating your **alert** entity.

Alerts from the following security providers are available via the legacy **alert** resource. Support for GET alerts, PATCH alerts, and subscribe (via webhooks) is indicated in the following table.

| Security provider | <p align="center">GET alert</p>| <p align="center">PATCH alert</p>| <p align="center">Subscribe to alert</p>|
|:------------------|:---------|:-----------|:------------------|
|[Microsoft Entra ID Protection](/azure/active-directory/identity-protection/playbook) | <p align="center">&#x2713;</p> | <p align="center">[File issue](https://github.com/microsoftgraph/security-api-solutions/issues/new) *</p> | <p align="center">&#x2713;</p> |
|[Azure Security Center](/azure/security-center/security-center-alerts-type)| <p align="center">&#x2713;</p> | <p align="center">&#x2713;</p> | <p align="center">&#x2713;</p> |
|Microsoft 365 <ul><li> [Default](/office365/securitycompliance/alert-policies#default-alert-policies)</li> <li>[Cloud App Security](/office365/securitycompliance/anomaly-detection-policies-in-ocas)</li><li>Custom Alert</li></ul> | <p align="center">&#x2713;</p> | <p align="center"> [File issue](https://github.com/microsoftgraph/security-api-solutions/issues/new) </p> | <p align="center"> [File issue](https://github.com/microsoftgraph/security-api-solutions/issues/new) </p> |
| [Microsoft Defender for Cloud Apps](/cloud-app-security/monitor-alerts) (formerly Microsoft Cloud App Security) | <p align="center">&#x2713;</p> | <p align="center">[File issue](https://github.com/microsoftgraph/security-api-solutions/issues/new) *</p> | <p align="center">&#x2713;</p> |
|[Microsoft Defender for Endpoint](/windows/security/threat-protection/microsoft-defender-atp/attack-simulations) (formerly Microsoft Defender ATP) **| <p align="center">&#x2713;</p> | <p align="center">&#x2713;</p> | <p align="center"> [File issue](https://github.com/microsoftgraph/security-api-solutions/issues/new) </p> |
|[Microsoft Defender for Identity](/azure-advanced-threat-protection/understanding-security-alerts#security-alert-categories) (formerly Azure Advanced Threat Protection) ***| <p align="center">&#x2713;</p> | <p align="center">[File issue](https://github.com/microsoftgraph/security-api-solutions/issues/new) *</p> | <p align="center">&#x2713;</p> |
|[Microsoft Sentinel](/azure/sentinel/quickstart-get-visibility) (formerly Azure Sentinel)| <p align="center">&#x2713;</p> | <p align="center">Not supported in Microsoft Sentinel </p> | <p align="center">&#x2713;</p> |

> **Note:** New providers are continuously onboarding to the Microsoft Graph security ecosystem. To request new providers or for extended support from existing providers, [file an issue in the Microsoft Graph security GitHub repo](https://github.com/microsoftgraph/security-api-solutions/issues/new).

\* File issue: Alert status gets updated across Microsoft Graph security API integrated applications but not reflected in the provider’s management experience.

\*\* Microsoft Defender for Endpoint requires additional [user roles](/windows/security/threat-protection/microsoft-defender-atp/user-roles) to those required by the Microsoft Graph security API. Only the users in both Microsoft Defender for Endpoint and Microsoft Graph security API roles can have access to the Microsoft Defender for Endpoint data. Because application-only authentication is not limited by this, we recommend that you use an application-only authentication token.

\*\*\* Microsoft Defender for Identity alerts are available via the Microsoft Defender for Cloud Apps integration. This means you get Microsoft Defender for Identity alerts only if you have joined Unified SecOps and connected Microsoft Defender for Identity into Microsoft Defender for Cloud Apps. Learn more about [how to integrate Microsoft Defender for Identity and Microsoft Defender for Cloud Apps](/azure-advanced-threat-protection/atp-mcas-integration).

## Attack simulation and training

[Attack simulation and training](/microsoft-365/security/office-365-security/attack-simulation-training) is part of [Microsoft Defender for Office 365](/microsoft-365/security/office-365-security/defender-for-office-365?view=o365-worldwide&preserve-view=true). This service lets users in a tenant experience a realistic benign phishing attack and learn from it. Social engineering simulation and training experiences for end users help reduce the risk of users being breached via those attack techniques. The attack simulation and training API enables tenant administrators to view launched [simulation](simulation.md) exercises and trainings, and get [reports](report-m365defender-reports-overview.md) on derived insights into online behaviors of users in the phishing simulations.

## eDiscovery (preview)

[Microsoft Purview eDiscovery (Premium)](/microsoft-365/compliance/overview-ediscovery-20) provides an end-to-end workflow to preserve, collect, analyze, review, and export content that's responsive to your organization's internal and external investigations.

## Audit logs query (preview)

[Microsoft Purview Audit](/microsoft-365/compliance/audit-solutions-overview) provides an integrated solution to help organizations effectively respond to security events, forensic investigations, internal investigations, and compliance obligations. Thousands of user and admin operations performed in dozens of Microsoft 365 services and solutions are captured, recorded, and retained in your organization's unified audit log. Audit records for these events are searchable by security ops, IT admins, insider risk teams, and compliance and legal investigators in your organization. This capability provides visibility into the activities performed across your Microsoft 365 organization.


## Incidents

An [incident](security-incident.md) is a collection of correlated  [alerts](security-alert.md) and associated data that make up the story of an attack. Incident management is part of Microsoft 365 Defender and is available in the Microsoft 365 Defender portal (https://security.microsoft.com/).

Microsoft 365 services and apps create  alerts  when they detect a suspicious or malicious event or activity. Individual alerts provide valuable clues about a completed or ongoing attack. However, attacks typically employ various techniques against different types of entities, such as devices, users, and mailboxes. The result is multiple  alerts for multiple entities in your tenant.

Because piecing the individual alerts together to gain insight into an attack can be challenging and time-consuming, Microsoft 365 Defender automatically aggregates the alerts and their associated information into an [incident](security-incident.md).

Grouping related alerts into an incident gives you a comprehensive view of an attack. For example, you can see:

- Where the attack started.
- What tactics were used.
- How far the attack has gone into your tenant.
- The scope of the attack, such as how many devices, users, and mailboxes were impacted.
- All of the data associated with the attack.

The  [incident](security-incident.md) resource and its APIs allow you to sort through incidents to create an informed cyber security response. It exposes a collection of incidents, with their related  [alerts](security-alert.md), that were flagged in your network, within the time range you specified in your environment retention policy.

## Information protection

**Labels** - Information protection labels provide details about how to properly apply a sensitivity label to information. The information protection label API describes the configuration of sensitivity labels that apply to a user or tenant.

**Threat assessment** - The Microsoft Graph threat assessment API helps organizations to assess the threat received by any user in a tenant. This empowers customers to report spam or suspicious emails, phishing URLs, or malware attachments they receive to Microsoft. Microsoft checks the sample in question and the organizational policies in play before generating a result so that tenant administrators can understand the threat scanning verdict and adjust their organizational policy. They can also use it to report legitimate emails to prevent them from getting blocked.

> **Note:** We recommend that you use the [threat submission](https://github.com/microsoftgraph/microsoft-graph-docs/pull/16242/files#threat-submission) API instead.


## Records management

Most organizations need to manage data to proactively comply with industry regulations and internal policies, reduce risk in the event of litigation or a security breach, and let their employees effectively and agiley share knowledge that is current and relevant to them. You can use the [records management APIs](../resources/security-recordsmanagement-overview.md) to systematically apply [retention labels](security-retentionlabel.md) to different types of content that require different retention settings. For example, you can configure the start of retention period from when the content was created, last modified, labeled or when an event occurs for a particular event type. Further, you can use [file plan descriptors](security-fileplandescriptor.md) to improve the manageability of these retention labels.

## Secure Score

[Microsoft Secure Score](https://techcommunity.microsoft.com/t5/Security-Privacy-and-Compliance/Office-365-Secure-Score-is-now-Microsoft-Secure-Score/ba-p/182358) is a security analytics solution that gives you visibility into your security portfolio and how to improve it. With a single score, you can better understand what you have done to reduce your risk in Microsoft solutions. You can also compare your score with other organizations and see how your score has been trending over time. The [secureScore](securescores.md) and [secureScoreControlProfile](securescorecontrolprofiles.md) entities help you balance your organization's security and productivity needs while enabling the appropriate mix of security features. You can also project what your score will be after you adopt security features.

## Threat intelligence (preview)

Microsoft Defender Threat Intelligence delivers world-class threat intelligence to help protect your organization from modern cyber threats. You can use Threat Intelligence to identify adversaries and their operations, accelerate detection and remediation, and enhance your security investments and workflows.

The threat intelligence APIs (preview) allow you to operationalize intelligence found within the user interface. This includes finished intelligence in the forms of articles and intel profiles, machine intelligence including IoCs and reputation verdicts, and finally, enrichment data including passive DNS, cookies, components, and trackers.

## Threat intelligence indicators (preview)

> [!NOTE]
> The [tiIndicator](tiindicator.md) entity is deprecated and will be removed by April 2026.

Threat indicators also referred to as indicators of compromise (IoCs), represent data about known threats, such as malicious files, URLs, domains, and IP addresses. Customers can generate indicators through internal threat intelligence gathering or acquire indicators from threat intelligence communities, licensed feeds, and other sources. These indicators are then used in various security tools to defend against related threats.

The [tiIndicator](tiindicator.md) entity allows customers to feed threat indicators to Microsoft security solutions to take a block or alert action on a malicious activity, or to allow the activity that has been determined to be irrelevant to the organization and suppress actions for the indicator. To send an indicator, specify the Microsoft security solution intended to utilize the indicator and the action to take for that indicator.

You can integrate the [tiIndicator](tiindicator.md) entity into your application or use one of the following integrated threat intelligence platforms (TIP):

- [Palo Alto Networks MineMeld Threat Intelligence Sharing](https://www.paloaltonetworks.com/products/secure-the-network/subscriptions/minemeld)
- [MISP Open Source Threat Intelligence Platform](http://www.misp-project.org/) available through the TI sample

Threat indicators sent via the Microsoft Graph security API are available today in the following products:

- [Microsoft Defender for Endpoint](/windows/security/threat-protection/microsoft-defender-atp/microsoft-defender-advanced-threat-protection) – Enables you to alert and/or block threat indicators associated with malicious activity. You can also allow an indicator for ignoring the indicator from automated investigations. For details about the types of indicators supported and limits on indicator counts per tenant, see [Manage indicators](/windows/security/threat-protection/microsoft-defender-atp/manage-indicators).
- [Microsoft Sentinel](/azure/sentinel/overview) – Only existing customers can use the [tiIndicator](tiindicator.md) API to send threat intelligence indicators to Microsoft Sentinel. For the most up-to-date, detailed instructions on how to send threat intelligent indicators to Microsoft Sentinel, see [Connect your threat intelligence platform to Microsoft Sentinel](/azure/sentinel/connect-threat-intelligence-tip).
## Threat submission

The Microsoft Graph threat submission API helps organizations to submit a threat received by any user in a tenant. This empowers customers to report spam or suspicious emails, phishing URLs, or malware attachments they receive to Microsoft. Microsoft checks the submission against the organizational policies in effect and sends it to human graders for analysis. The result then helps tenant administrators understand the threat scanning verdict and adjust their organizational policy. Admins can also use the results to report legitimate emails to prevent them from getting blocked.

> **Note:** We recommend that you use the threat submission API instead of the deprecated Information Protection threat assessment API. The threat submission API provides unified security threat submission functionality and adds unified result support, user submission query support, tenant allow block list support, admin review support and app-only mode support.

## Email and collaboration protection (preview)

[Microsoft Defender for Office 365](/microsoft-365/security/office-365-security/defender-for-office-365?view=o365-worldwide&preserve-view=true) is a cloud-based email filtering service that helps protect your organization against advanced threats to email and collaboration tools, like phishing, business email compromise, and malware attacks. You can use the Microsoft Graph **analyzedemails** and **remediate** APIs to retrieve email metadata and perform response actions (soft delete, hard delete, move to junk, move to Inbox) on analyzed messages.

> **Note:** These APIs are only availbe for Defender for Office 365 Plan 2 or Microsoft 365 A5/E5/F5/G5 Security service plans. For the most up-to-date list of service plans, see [Microsoft Defender for Office 365 service description](/office365/servicedescriptions/office-365-advanced-threat-protection-service-description).

## Identities

### Health Issues
The Defender for Identity health issues API allows you to monitor the health status of your sensors and agents across your hybrid identity infrastructure. You can use the health issues API to retrieve information about the current health issues of your sensors, such as the issue type, status, configuration, and severity. You can also use the API to identify and resolve any issues that may affect the functionality or security of your sensors and agents.

## Common use cases

The following are some of the most popular requests for working with the Microsoft Graph security API.

| **Use cases**   | **REST operations** | **Try it in Graph Explorer** |
|:---------------|:--------|:----------|
| **Actions (preview)**|||
| Get security action | [Get security action](../api/securityaction-get.md)|[https://graph.microsoft.com/beta/security/securityActions/{id}](https://developer.microsoft.com/graph/graph-explorer?request=security/securityActions/{id}&method=GET&version=beta&GraphUrl=https://graph.microsoft.com)|
|List security actions| [List security actions](../api/securityactions-list.md)|[https://graph.microsoft.com/beta/security/securityActions](https://developer.microsoft.com/graph/graph-explorer?request=security/securityActions&method=GET&version=beta&GraphUrl=https://graph.microsoft.com)|
|Create security actions|[Create security actions](../api/securityactions-post.md)|[https://graph.microsoft.com/beta/security/securityActions](https://developer.microsoft.com/graph/graph-explorer?request=security/securityActions&method=POST&version=beta&GraphUrl=https://graph.microsoft.com)|
|Cancel security action|[Cancel security actions](../api/securityaction-cancelsecurityaction.md)| [https://graph.microsoft.com/beta/security/securityActions/{id}/cancelSecurityAction](https://developer.microsoft.com/graph/graph-explorer?request=security/securityActions/{id}/cancelSecurityAction&method=POST&version=beta&GraphUrl=https://graph.microsoft.com) |
| **Alerts and incidents**|||
| List alerts | [List alerts](../api/security-list-alerts_v2.md) | [https://graph.microsoft.com/beta/security/alerts_v2](https://developer.microsoft.com/graph/graph-explorer?request=security/alerts_v2&method=GET&version=beta&GraphUrl=https://graph.microsoft.com) |
| Update alert | [Update alert](../api/security-alert-update.md) | [https://graph.microsoft.com/beta/security/alerts/{id}](https://developer.microsoft.com/graph/graph-explorer?request=security/alerts/{id}&method=PATCH&version=beta&GraphUrl=https://graph.microsoft.com) |
| List incidents | [List incidents](../api/security-list-incidents.md) | [https://graph.microsoft.com/beta/security/incidents](https://developer.microsoft.com/graph/graph-explorer?request=security/incidents&method=GET&version=beta&GraphUrl=https://graph.microsoft.com) |
| List incidents with alerts| [List incidents](../api/security-list-incidents.md) | [https://graph.microsoft.com/beta/security/incidents?$expand=alerts](https://developer.microsoft.com/graph/graph-explorer?request=security/incidents?$expand=alerts&method=GET&version=beta&GraphUrl=https://graph.microsoft.com) |
| Update incident | [Update incident](../api/security-incident-update.md) | [https://graph.microsoft.com/beta/security/incidents/{id}](https://developer.microsoft.com/graph/graph-explorer?request=security/incidents/{id}&method=PATCH&version=beta&GraphUrl=https://graph.microsoft.com) |
| **Attack simulation and training**|||
|List simulations|[List simulations](../api/attacksimulationroot-list-simulations.md)|[https://graph.microsoft.com/beta/security/attackSimulation/simulations](https://developer.microsoft.com/graph/graph-explorer?request=security/attackSimulation/simulations&method=GET&version=beta&GraphUrl=https://graph.microsoft.com)|
|Get simulation overview report|[Get simulation overview report](../api/simulationreportoverview-get.md)|[https://graph.microsoft.com/beta/security/attackSimulation/simulations/{id}/report/overview](https://developer.microsoft.com/graph/graph-explorer?request=security/attackSimulation/simulations/{id}/report/overview&method=GET&version=beta&GraphUrl=https://graph.microsoft.com)|
|List simulation users report|[List simulation users report](../api/usersimulationdetails-list.md)|[https://graph.microsoft.com/beta/security/attackSimulation/simulations/{id}/report/simulationUsers](https://developer.microsoft.com/graph/graph-explorer?request=security/attackSimulation/simulations/{id}/report/simulationUsers&method=GET&version=beta&GraphUrl=https://graph.microsoft.com)|
| **eDiscovery**|||
|List eDiscovery cases|[List eDiscoveryCases](../api/security-casesroot-list-ediscoverycases.md)|[https://graph.microsoft.com/beta/security/cases/eDiscoveryCases](https://developer.microsoft.com/graph/graph-explorer?request=security%2Fcases%2FeDiscoverycases&method=GET&version=beta&GraphUrl=https://graph.microsoft.com)|
|List eDiscovery case operations|[List caseOperations](../api/security-ediscoverycase-list-operations.md)|[https://graph.microsoft.com/beta/security/cases/ediscoveryCases/{id}/operations](https://developer.microsoft.com/graph/graph-explorer?request=security%2Fcases%2FeDiscoverycases%2F%7Bid%7D%2Foperations&method=GET&version=beta&GraphUrl=https://graph.microsoft.com)|
| **Legacy alerts**|||
| List alerts | [List alerts](../api/alert-list.md) | [https://graph.microsoft.com/beta/security/alerts](https://developer.microsoft.com/graph/graph-explorer?request=security/alerts&method=GET&version=beta&GraphUrl=https://graph.microsoft.com) |
| Update alerts | [Update alert](../api/alert-update.md) </br> [Update multiple alerts](../api/alert-updatealerts.md) | [https://graph.microsoft.com/beta/security/alerts/{alert-id}](https://developer.microsoft.com/graph/graph-explorer?request=security/alerts/{alert-id}&method=PATCH&version=beta&GraphUrl=https://graph.microsoft.com) </br> [https://graph.microsoft.com/beta/security/alerts/updateAlerts](https://developer.microsoft.com/graph/graph-explorer?request=security/alerts/updateAlerts&method=POST&version=beta&GraphUrl=https://graph.microsoft.com) |
| **Secure scores**|||
|List secure scores|[List secureScores](../api/securescores-list.md)|[https://graph.microsoft.com/beta/security/secureScores](https://developer.microsoft.com/graph/graph-explorer?request=security/secureScores&method=GET&version=beta&GraphUrl=https://graph.microsoft.com)|
| **Secure score control profiles**|||
|List secure score control profiles|[List secureScoreControlProfiles](../api/securescorecontrolprofiles-list.md)|[https://graph.microsoft.com/beta/security/secureScoreControlProfiles](https://developer.microsoft.com/graph/graph-explorer?request=security/secureScoreControlProfiles&method=GET&version=beta&GraphUrl=https://graph.microsoft.com)|
|Update secure score control profiles|[Update secureScoreControlProfiles](../api/securescorecontrolprofiles-update.md)|[https://graph.microsoft.com/beta/security/secureScoreControlProfiles/{id}](https://developer.microsoft.com/graph/graph-explorer?request=security/secureScoreControlProfiles/{id}&method=PATCH&version=beta&GraphUrl=https://graph.microsoft.com)|
| **Threat intelligence indications (preview)**|||
|Get TI indicator|[Get tiIndicator](../api/tiindicator-get.md)| [https://graph.microsoft.com/beta/security/tiIndicators/{id}](https://developer.microsoft.com/graph/graph-explorer?request=security/tiIndicators/{id}&method=GET&version=beta&GraphUrl=https://graph.microsoft.com)|
|List TI Indicators | [List tiIndicators](../api/tiindicators-list.md) | [https://graph.microsoft.com/beta/security/tiIndicators](https://developer.microsoft.com/graph/graph-explorer?request=security/tiIndicators&method=GET&version=beta&GraphUrl=https://graph.microsoft.com)|
|Create TI Indicator|[Create tiIndicator](../api/tiindicators-post.md)|[https://graph.microsoft.com/beta/security/tiIndicators](https://developer.microsoft.com/graph/graph-explorer?request=security/tiIndicators&method=POST&version=beta&GraphUrl=https://graph.microsoft.com)|
|Submit TI Indicators|[Submit tiIndicators](../api/tiindicator-submittiindicators.md)| [https://graph.microsoft.com/beta/security/tiIndicators/submitTiIndicators](https://developer.microsoft.com/graph/graph-explorer?request=security/tiIndicators/submitTiIndicators&method=POST&version=beta&GraphUrl=https://graph.microsoft.com) |
|Update TI Indicators|[Update tiIndicator](../api/tiindicator-update.md) </br>[Update multiple tiIndicators](../api/tiindicator-updatetiindicators.md)| [https://graph.microsoft.com/beta/security/tiIndicators/{id}](https://developer.microsoft.com/graph/graph-explorer?request=security/tiIndicators/{id}&method=POST&version=beta&GraphUrl=https://graph.microsoft.com) </br>[https://graph.microsoft.com/beta/security/tiIndicators/updateTiIndicators](https://developer.microsoft.com/graph/graph-explorer?request=security/tiIndicators/updateTiIndicators&method=POST&version=beta&GraphUrl=https://graph.microsoft.com)|
|Delete TI Indicators|[Delete tiIndicator](../api/tiindicator-delete.md) </br>[Delete multiple tiIndicators](../api/tiindicator-deletetiindicators.md) </br>[Delete tiIndicator by externalId](../api/tiindicator-deletetiindicatorsbyexternalid.md)| DELETE </br>[https://graph.microsoft.com/beta/security/tiIndicators/{id}](https://developer.microsoft.com/graph/graph-explorer?request=security/tiIndicators/{id}&method=DELETE&version=beta&GraphUrl=https://graph.microsoft.com) </br>POST</br>[https://graph.microsoft.com/beta/security/tiIndicators/deleteTiIndicators](https://developer.microsoft.com/graph/graph-explorer?request=security/tiIndicators/deleteTiIndicators&method=POST&version=beta&GraphUrl=https://graph.microsoft.com)</br>POST</br>[https://graph.microsoft.com/beta/security/tiIndicators/deleteTiIndicatorsByExternalId](https://developer.microsoft.com/graph/graph-explorer?request=security/tiIndicators/deleteTiIndicatorsByExternalId&method=POST&version=beta&GraphUrl=https://graph.microsoft.com)|
| **Threat submission**|||
|Get email threat submission|[Get emailThreat](../api/security-emailthreatsubmission-get.md)| [https://graph.microsoft.com/beta/security/threatSubmission/emailThreats/{id}](https://developer.microsoft.com/graph/graph-explorer?request=security/threatSubmission/emailThreats/{id}&method=GET&version=beta&GraphUrl=https://graph.microsoft.com)|
|List email threat submissions | [List emailThreats](../api/security-emailthreatsubmission-list.md) | [https://graph.microsoft.com/beta/threatSubmission/emailThreats](https://developer.microsoft.com/graph/graph-explorer?request=threatSubmission/emailThreats&method=GET&version=beta&GraphUrl=https://graph.microsoft.com)|
|Create email threat submission|[Create emailThreat](../api/security-emailthreatsubmission-post-emailthreats.md)|[https://graph.microsoft.com/beta/security/threatSubmission/emailThreats](https://developer.microsoft.com/graph/graph-explorer?request=security/security/threatSubmission/emailThreats&method=POST&version=beta&GraphUrl=https://graph.microsoft.com)|
|Review email threat submission|[Review emailThreat](../api/security-emailthreatsubmission-review.md)|[https://graph.microsoft.com/beta/security/threatSubmission/emailThreats/{id}/review](https://developer.microsoft.com/graph/graph-explorer?request=security/security/threatSubmission//emailThreats/{id}/review&method=POST&version=beta&GraphUrl=https://graph.microsoft.com)|
|Get file threat submission|[Get fileThreat](../api/security-filethreatsubmission-get.md)| [https://graph.microsoft.com/beta/security/threatSubmission/fileThreats/{id}](https://developer.microsoft.com/graph/graph-explorer?request=security/threatSubmission/urlThreats/{id}&method=GET&version=beta&GraphUrl=https://graph.microsoft.com)|
|List file threat submissions | [List fileThreats](../api/security-filethreatsubmission-list.md) | [https://graph.microsoft.com/beta/threatSubmission/urlThreats](https://developer.microsoft.com/graph/graph-explorer?request=threatSubmission/fileThreats&method=GET&version=beta&GraphUrl=https://graph.microsoft.com)|
|Create file threat submission|[Create fileThreat](../api/security-filethreatsubmission-post-fileThreats.md)|[https://graph.microsoft.com/beta/security/threatSubmission/fileThreats](https://developer.microsoft.com/graph/graph-explorer?request=security/security/threatSubmission/fileThreats&method=POST&version=beta&GraphUrl=https://graph.microsoft.com)|
|Get url threat submission|[Get urlThreat](../api/security-urlthreatsubmission-get.md)| [https://graph.microsoft.com/beta/security/threatSubmission/urlThreats/{id}](https://developer.microsoft.com/graph/graph-explorer?request=security/threatSubmission/urlThreats/{id}&method=GET&version=beta&GraphUrl=https://graph.microsoft.com)|
|List url threat submissions | [List urlThreats](../api/security-urlthreatsubmission-list.md) | [https://graph.microsoft.com/beta/security/threatSubmission/urlThreats](https://developer.microsoft.com/graph/graph-explorer?request=threatSubmission/urlThreats&method=GET&version=beta&GraphUrl=https://graph.microsoft.com)|
|Create url threat submission|[Create urlThreat](../api/security-urlthreatsubmission-post-urlthreats.md)|[https://graph.microsoft.com/beta/security/threatSubmission/urlThreats](https://developer.microsoft.com/graph/graph-explorer?request=security/security/threatSubmission/urlThreats&method=POST&version=beta&GraphUrl=https://graph.microsoft.com)|
|Get email threat submission policy|[Get emailThreatSubmissionPolicy](../api/security-emailthreatsubmission-get.md)| [https://graph.microsoft.com/beta/security/threatSubmission/emailThreatSubmissionPolicies/{id}](https://developer.microsoft.com/graph/graph-explorer?request=security/threatSubmission/emailThreatSubmissionPolicies/{id}&method=GET&version=beta&GraphUrl=https://graph.microsoft.com)|
|List email threat submission policies | [List emailThreatSubmissionPolicies](../api/security-emailthreatsubmissionpolicy-list.md) | [https://graph.microsoft.com/beta/security/threatSubmission/emailThreatSubmissionPolicies](https://developer.microsoft.com/graph/graph-explorer?request=security/threatSubmission/emailThreatSubmissionPolicies&method=GET&version=beta&GraphUrl=https://graph.microsoft.com)|
|Create email threat submission policy|[Create emailThreatSubmissionPolicy](../api/security-emailthreatsubmission-post-emailthreats.md)|[https://graph.microsoft.com/beta/security/threatSubmission/emailThreatSubmissionPolicies](https://developer.microsoft.com/graph/graph-explorer?request=/security/threatSubmission/emailThreats&method=POST&version=beta&GraphUrl=https://graph.microsoft.com)|
|Update email threat submission policy|[Update emailThreatSubmissionPolicy](../api/security-emailthreatsubmission-post-emailthreats.md)|[https://graph.microsoft.com/beta/security/threatSubmission/emailThreatSubmissionPolicies/{id}](https://developer.microsoft.com/graph/graph-explorer?request=security/security/threatSubmission/emailThreatSubmissionPolicies/{id}&method=PATCH&version=beta&GraphUrl=https://graph.microsoft.com)|
|Delete email threat submission policy|[Delete emailThreatSubmissionPolicy](../api/security-emailthreatsubmissionpolicy-delete.md)|[https://graph.microsoft.com/beta/security/threatSubmission/emailThreatSubmissionPolicies/{id}](https://developer.microsoft.com/graph/graph-explorer?request=security/threatSubmission/emailThreatSubmissionPolicies/{id}&method=DELETE&version=beta&GraphUrl=https://graph.microsoft.com)|
|Delete email threat submission policy|[Delete emailThreatSubmissionPolicy](../api/security-emailthreatsubmissionpolicy-delete.md)|[https://graph.microsoft.com/beta/security/threatSubmission/emailThreatSubmissionPolicies/{id}](https://developer.microsoft.com/graph/graph-explorer?request=security/threatSubmission/emailThreatSubmissionPolicies/{id}&method=DELETE&version=beta&GraphUrl=https://graph.microsoft.com)|
| **Email analysis and remediation**|||
|Query email metadata|[LIST analyzedemails](../api/security-collaborationroot-list-analyzedemails.md)|[https://graph.microsoft.com/beta/security/collaboration/analyzedemails?startTime={startTime}&endTime={endTime}](https://developer.microsoft.com/graph/graph-explorer?request=security/collaboration/analyzedemails?startTime={startTime}&endTime={endTime}&method=GET&version=beta&GraphUrl=https://graph.microsoft.com)|
|Get details of a single message instance|[GET analyzedemails/Id](../api/security-analyzedemail-get.md)|[https://graph.microsoft.com/beta/security/collaboration/analyzedemails/{Id}](https://developer.microsoft.com/graph/graph-explorer?request=security/collaboration/analyzedemails/Id&method=GET&version=beta&GraphUrl=https://graph.microsoft.com)|
|Remediate analyzed email|[analyzedEmai: remediate](../api/security-analyzedemail-remediate.md )|[https://graph.microsoft.com/beta/security/collaboration/analyzedemails/remediate](https://developer.microsoft.com/graph/graph-explorer?request=security/collaboration/analyzedemails/remediate&method=POST&version=beta&GraphUrl=https://graph.microsoft.com)|
| **Identities**|||
| List health issues | [List health issues](../api/security-identityContainer-list-healthIssues.md) | [https://graph.microsoft.com/beta/security/identities/healthIssues](https://developer.microsoft.com/graph/graph-explorer?request=security/identities/healthIssues&method=GET&version=beta&GraphUrl=https://graph.microsoft.com) |


You can use Microsoft Graph [webhooks](/graph/webhooks) to subscribe to and receive notifications about updates to Microsoft Graph security API entities.

## Next steps

The Microsoft Graph security API can open up new ways for you to engage with different security solutions from Microsoft and partners. Follow these steps to get started:

- Drill down into [alerts](alert.md), [tiIndicator](tiindicator.md) (preview), [securityAction](securityaction.md) (preview), [secureScore](securescores.md), and [secureScoreControlProfiles](securescorecontrolprofiles.md).
- Try the API in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer). Under **Sample Queries**, choose **show more samples** and set the Security category to **on**.
- Try [subscribing to and receiving notifications](/graph/webhooks) on entity changes.

## Related content

[Code and contribute](https://github.com/microsoftgraph/security-api-solutions/blob/master/CONTRIBUTING.md) to this Microsoft Graph security API sample:

- [PowerShell sample](/powershell/scripting/developer/prog-guide/windows-powershell-sample-code)

Explore other options to connect with the Microsoft Graph security API:

- [Microsoft Graph security connectors for Logic Apps, Flow and Power Apps](/azure/connectors/connectors-integrate-security-operations-create-api-microsoft-graph-security)
- [Jupyter notebook samples](/azure/machine-learning/samples-notebooks)

Engage with the community:

- [Join the tech community](https://techcommunity.microsoft.com/t5/microsoft-graph-security-api/bd-p/SecurityGraphAPI)
- [Discuss on StackOverflow](https://stackoverflow.com/questions/tagged/microsoft-graph-security)
