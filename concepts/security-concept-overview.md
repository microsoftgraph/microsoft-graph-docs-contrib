# Overview of security in Microsoft Graph (preview) 

Microsoft Graph lets you connect with Microsoft Intelligent Security Graph to leverage Microsoft and security partner resources, and build better threat response solutions. It also lets you integrate with security capabilities in Azure Active Directory to detect identity risks.

## Why use the security API and connect with Microsoft Intelligent Security Graph?

<!-- Edward - please describe what Microsoft Intelligent Security Graph is, how the security API relates to it, and what value developers get out of using the security API.
-->

Microsoft Intelligent Security Graph is a unified platform for combatting cyberthreats. It powers real-time threat protection for Microsoft products and services and supports an ecosystem of integrated solutions.

The security API in Microsoft Graph makes it easy to connect with those solutions in the Intelligent Security Graph. It allows you to more readily realize and enrich the value of these solutions in the following ways.

### Unify and standardize alert management

Correlate alerts across security solutions more easily with a common alert schema. Write code once to integrate alerts from any Microsoft Graph integrated security solution, and keep alert status and assignments in sync across all solutions. You can also stream alerts to security information and event management (SIEM) solutions such as Splunk and IBM QRadar via [Azure Monitor](https://blogs.msdn.microsoft.com/azuresecurity/2016/08/23/azure-log-siem-configuration-steps/).

### Federated security aggregation service

Use the security API as a federated security aggregation service to submit queries to all onboarded security providers, and get aggregated responses.

### Unlock security context to drive investigation

Dive deep into related security-relevant inventory (like users, hosts, and apps), then add organizational context from other Microsoft Graph providers (Azure Active Directory, Microsoft Intune, Office 365) to bring business and security context together and improve threat response.

## Why use Azure Active Directory to protect identities in your organization?

{Michael - Please start by describe why protecting identities is important to an organization. Extract from this [getting started](https://docs.microsoft.com/en-us/azure/active-directory/active-directory-identityprotection#getting-started) section which describes why all identities should be protected, and users identified to be at risk should be protected from further abuse. 

Then list the kinds of identity risks that the ID protection API detects. 

Then complete this section by recommending what can be done with the detected data - configure risk-based policies, and so on.}

{<=1 pages of value proposition for developers.}

## Next steps

- [Use the security API to integrate with Microsoft Intelligent Security Graph](../api-reference/beta/resources/security-api-overview.md)
- [Use the Azure AD identity protection API](../api-reference/beta/resources/identityprotection_root.md)

