---
title: "Microsoft Graph connectors overview"
description: "Microsoft Graph connectors overview"
author: "mecampos"
localization_priority: Priority
ms.author: "mecampos"
ms.prod: "data-inflow"
---



# Microsoft Graph connectors overview

[Microsoft 365](https://www.microsoft.com/microsoft-365) is a complete, intelligent solution that empowers users and organizations with innovative productivity experiences and rich insights to increase efficiency and drive business growth. Microsoft Graph is the data fabric that powers these intelligent experiences, and the Graph API provides access to this data and intelligence.

Although most information workers spend much of their work time within productivity applications such as [Microsoft 365](https://www.microsoft.com/microsoft-365), they also need a way to integrate that environment with the enterprise applications and other on-premises and SaaS cloud software and services they use. For example, enterprise resource planning (ERP) applications, customer resource management (CRM) applications, intranet applications, wikis, blogs, and social networking sites.

Microsoft Graph connectors offer a simple and intuitive way to bring content from external services into Microsoft Graph, enabling external data to power Microsoft 365 intelligent experiences like Microsoft Search (currently GA) and many more (coming soon).

Today, with Microsoft Graph connectors, the data you bring in from your organization can appear in Microsoft Search results. This feature expands the types of content sources that are searchable in your Microsoft 365 productivity apps and the broader Microsoft ecosystem. Soon, connectors will power many other Microsoft 365 intelligent experiences.
The following diagram provides a high-level overview of Microsoft Graph connectors.

<!---Insert image reference here --->
<!---       ![Select the Microsoft Graph permissions](./images/application-saml-sso-configure-api/set-permissions.png) --->
![Overview](./images/connectors-images/overview.png)

### Build your own custom connector
We have 100+ connectors built by Microsoft and partners that enable you to connect to popular Microsoft and non-Microsoft services. Examples of existing connectors include Azure services, Box, ServiceNow, SalesForce, Google services, MediaWiki, and more.

While these connectors help connect to popular services, you may want to integrate with services that aren't available in the existing [connectors gallery](https://docs.microsoft.com/microsoftsearch/connectors-gallery). In such situations, you can build a custom connector using the Microsoft Graph Connector APIs to bring the external data you need into Microsoft 365 experiences such as Microsoft Search (and many more coming soon) in your organization.

Get started with custom Graph connectors:
* [Graph Connector API overview](data-inflow-connectors-api-overview.md)
* [Try Graph Connector APIs using Postman](data-inflow-connectors-api-postman.md)
* [Build your first custom connector with Microsoft Graph]()

