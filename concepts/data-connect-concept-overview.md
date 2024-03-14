---
title: "Microsoft Graph Data Connect overview"
description: "Use Microsoft Graph Data Connect to access Microsoft 365 bulk data at scale, enable granular consent, and provide data security and governance."
author: "rimisra2"
ms.localizationpriority: high
ms.subservice: "data-connect"
ms.custom: scenarios:getting-started
---

# Overview of Microsoft Graph Data Connect

In a hybrid workplace, organizations must develop a data-driven culture in order to dynamically evolve. Today's organizations have an incredible amount of business data across applications and services in Microsoft 365.
 
The potential this data holds is powerful; however, to remain competitive, organizations must unlock access to their Microsoft 365 data and streamline their manual analytical processes. Data is an organization's competitive advantage. 

You can use [Microsoft Graph Data Connect](https://developer.microsoft.com/graph) to access your Microsoft 365 data for enterprise analytics. Data Connect provides secure, scalable access to relevant Microsoft 365 datasets in Microsoft Fabric, Azure Synapse, and Azure Data Factory. 

Data Connect unlocks a number of enterprise analytics scenarios, including: 

- **Customer relationship analytics** - For commercial business leaders, go beyond traditional customer relationship management (CRM) insights and understand customer interactions and relationships based on communication and collaboration patterns. Customer relationship scenarios include customer relationship mesh, customer 360, customer complaint management, and conversation lineage. 
- **Business process analytics** - For better operations, see how work really flows through the organization on a day-to-day basis. Pinpoint manual processes and workflow bottlenecks that can be automated or optimized. Business process scenarios include process discovery and automation, skills finder and talent alignment, and supply chain automation. 
- **Security and compliance analytics** - To secure sensitive data, learn how employees use and share sensitive information. Implement anomaly detection, threat intelligence, audit log analysis, risk management, and legal forensics. Security and compliance scenarios include information sharing, fraud detection, and international threat detection. 
- **People productivity analytics** - To drive transformation, export your [Microsoft Viva](/viva/microsoft-viva-overview) productivity metrics, so you can convert insights into solutions with digital adoption, smart meetings and content, hybrid workplaces, and cultural change. People productivity scenarios include culture-driven digital transformation, employee engagement and activity, hybrid work effectiveness, and organizational network analysis. 

![An image that shows some of the enterprise analytics scenarios that are possible.](images/data_connect_msdc_solution.png)

## Why choose Microsoft Graph Data Connect?

With Data Connect, organizations can:

- **Scale access to Microsoft 365 data:** Gain deep insights into the patterns of organizational collaboration.
- **Accelerate time to insights:** Reduce the time to value and get updated reports out faster, and perform interactive analysis without the need for data migration.
- **Help to ensure security and governance:** Minimize compliance management overhead and provide access to secure data, empowering data and business users to make more informed and accurate data-driven decisions.

To learn more about Data Connect features, see [Scale access to Microsoft 365 data with Microsoft Graph Data Connect](https://devblogs.microsoft.com/microsoft365dev/scale-access-to-microsoft-365-data-with-microsoft-graph-data-connect/).

## Who benefits from Microsoft Graph Data Connect?

Data Connect benefits many roles in your organization:

- **LOB business leaders** need actionable insights from Microsoft 365 data because it helps them make informed decisions regarding their organization. By analyzing data, they can identify patterns and trends, including customer relationship analytics, business process analytics, security and compliance analytics, and people productivity analytics.
- **Data engineers** collect, process, and transform Microsoft 365 data from Data Connect into a format that data scientists and analysts can use. They construct and manage Microsoft 365 data pipelines as data combined across other data sources in Microsoft Fabric and ensure the highest levels of data quality and consistency. 
- **Data scientists** and **data analysts** play a critical role in helping business leaders make sense of their data and use it to drive business decisions. Data analysts identify trends, patterns, and insights. They analyze Microsoft 365 data and create reports, dashboards, and visualizations to communicate findings and make informed decisions. Data scientists build accurate, predictive models and algorithms based on the petabytes of Microsoft 365 data available from Data Connect. They use machine learning to analyze data and make predictions about future outcomes.

## How do I get started? 

At a high level, to set up Data Connect, you:

1. Set up your **Microsoft 365 tenant and enable Microsoft Graph Data Connect**.
2. Set up your **Microsoft Entra app registration**.
3. Set up your **Azure Storage resource**.
4. Set up your **Azure resource with Azure Synapse or Azure Data Factory**.
5. Monitor data consent requests with **Microsoft 365 Admin Center or PowerShell**.

For more details about how to get started, see [Build your first Microsoft Graph Data Connect application](/graph/data-connect-quickstart?tabs=AzureSynapsePipeline%2CMicrosoft365). 

## Microsoft 365 data and datasets

Organizations can access various types of Microsoft 365 data via Microsoft Graph Data Connect. Datasets are available from a wide variety of Microsoft 365 sources, including Microsoft Entra ID, Outlook, Teams, SharePoint, Viva Insights, and Microsoft groups — and the list is growing. 

![An image that shows various types of Microsoft 365 data that organizations get though Microsoft Graph Data Connect.](images/data-connect-continuing-growth.png)

Microsoft 365 datasets come ready for analysis and include the following categories:  

- **Basic datasets:** Datasets generated from raw customer-created content and inputs from Microsoft 365 applications and services. 
- **Cleaned datasets:** Datasets generated by either normalization and de-duplication from basic datasets. This can also include datasets created from user activity or behavior signals in Microsoft 365.
- **Curated datasets:** Datasets generated for a custom use case or analytics scenario. This category can also include datasets from other Microsoft organizations, such as Viva Insights, SharePoint, and so on. These datasets enable You to extend  Microsoft 365 analytics applications.

For a list of Data Connect datasets, see [Datasets, regions, and sinks supported by Microsoft Graph Data Connect](/graph/data-connect-datasets).

## Data Connect templates
Browse through a gallery of templates that provide the necessary Azure resources, data pipelines, and user experience samples to accelerate your path to realizing the value of Microsoft 365 data. <!-- For details, see [Microsoft Graph Data Connect templates](data-connect-templates-overview.md).-->

Templates help take use cases from hypothesis to implementation by:

- Aggregating and analyzing large volumes of data within minutes.
- Simplifying development workflows to rapidly build, test, and iterate.
- Automating processes to reduce the need for time-consuming, manual processes.
- Providing data visualizations without the need for complex report configuration.

## Security and compliance

Data Connect helps secure Microsoft 365 data by minimizing compliance management overhead for Microsoft 365 administrators. 

Choose from these compliance options for you applications that use Microsoft 365 data:

- See persistent data governance in a single view with [Microsoft Purview](/purview/purview). 
- Minimize compliance management overhead by using specified detailed compliance policies for applications and users.
- Follow the industry standard for data privacy and confidentially, with support for critical data protection regulations such as GDPR and HIPAA.

For details, see [Security, governance and privacy built into Microsoft Graph Data Connect](https://devblogs.microsoft.com/microsoft365dev/security-governance-and-privacy-built-into-microsoft-graph-data-connect/).

## Microsoft 365 data integration

Microsoft Graph Data Connect is integrated with the following Microsoft services with Microsoft 365 data plus: 
- [Microsoft Fabric](https://aka.ms/microsoft-fabric) 
- [Azure Synapse Analytics](https://azure.microsoft.com/products/synapse-analytics/) 
- [Azure Data Factory](https://azure.microsoft.com/products/data-factory/) 
- [Microsoft Viva Insights](https://www.microsoft.com/microsoft-viva/insights)
- [Microsoft Syntex](https://www.microsoft.com/microsoft-syntex)

### Microsoft Fabric integration

Now you can bring all your Microsoft 365 data into [Microsoft Fabric](/fabric/get-started/microsoft-fabric-overview). Use the Microsoft 365 Data Integration for Microsoft Fabric feature to manage your Microsoft 365 data alongside your other data sources in one place. This solution offers you a suite of analytical experiences that work together to transform your data into a competitive advantage.

![An image that shows the benefits of using Microsoft 365 along with Microsoft Fabric.](images/data_connect_microsoft_fabric.png)

Fabric brings together all these experiences into a unified platform to offer the most comprehensive big data analytics platform in the industry.

- **Azure Data Factory:** Combines the simplicity of Power Query with the scale and power of Azure Data Factory.
- **Azure Synapse:** Accelerates time to insight across data warehouses and big data systems.
- **Power BI:** Ensures that business owners can access all the data in Fabric quickly and intuitively to make better decisions.

To learn more about Microsoft Graph Data Connect integration with Microsoft Fabric, see:

- [Microsoft Fabric Launch Digital Event video](https://youtu.be/1o_QDFq6gzE?t=10194) 
- [Transform Your Microsoft 365 Data into Business Insights with Microsoft Graph Data Connect](https://info.microsoft.com/ww-landing-Unlock-Productivity-and-Collaboration-Insights-with-Microsoft-Graph-data_connect-and-Microsoft-Fabric.html)
- [Microsoft 365 Data + Microsoft Fabric better together blog](https://blog.fabric.microsoft.com/blog/microsoft-365-data-microsoft-fabric-better-together/)

## Microsoft Graph Data Connect customer and partner stories

Microsoft Graph Data Connect customers build enterprise analytics to empower their organizations.

| Customer        | Description |
| ----------- | ----------- |
| ![JLL logo.](images/data_connect_logo_jll.png)   | **JLL** gives their sales teams a holistic view of client relationships. To learn more, see [Microsoft Customer Story-JLL gives sales teams a holistic view of client relationships](https://customers.microsoft.com/en-us/story/1640464050423914642-jll-professional-services-microsoft-graph-data-connect) |
| ![Politecnico di Milano logo.](images/data_connect_logo_politecnico.png) | Universities like **Politecnico di Milano** use Microsoft Graph Data Connect to research actionable workforce sentiment insights. To learn more, see [Microsoft Customer Story-Politecnico di Milano delivers actionable workforce sentiment insights](https://customers.microsoft.com/en-us/story/1635023177515744184-politecnico-di-milano-higher-education-microsoft-graph-data-connect) |
| ![Sura logo.](images/data_connect_logo_sura.png)   | Companies like **Sura**  are using Microsoft Graph Data Connect to help businesses reduce human resources risk. To learn more, see [Microsoft Customer Story-Seguros SURA Latinoamérica to help businesses reduce strategic human resources risk](https://customers.microsoft.com/story/1602468095350437521-suramericana-insurance-microsoft365) |
| ![G&J Pepsi-Cola Bottlers logo.](images/data_connect_logo_gjpepsi.png)   | **G&J Pepsi-Cola Bottlers** reflect on overcoming ransomware attacks and offer insights from the other side. To learn more, see [Microsoft Customer Story-G&J Pepsi reflects on overcoming a ransomware attack, offers insights from the other side](https://customers.microsoft.com/story/1548796714270598782-gjpepsi-consumer-goods-microsoft-security-solutions) |


Microsoft Graph Data Connect has a rich network of enterprise technology partners who have built powerful solutions with Microsoft 365 data. 

| Partner        | Description |
| ----------- | ----------- |
| ![GainX logo.](images/data_connect_logo_gainx.png)   | **GainX** builds a comprehensive map of information flow and provide a data-driven, systemic view of how an organization is actually functioning. To learn more, see [Maximizing organizational performance with GainX Artificial Intelligence and Microsoft Graph Data Connect](https://devblogs.microsoft.com/microsoft365dev/maximizing-organizational-performance-with-gainx-artificial-intelligence-and-microsoft-graph-data-connect). |
| ![HCL logo.](images/data_connect_logo_hclsoftware.png)   | **HCL** conducts better workforce management, performance analysis, and improvement measures to understand employee productivity. |
| ![Infosys logo.](images/data_connect_logo_infosys.png)   | **Infosys** gathers feedback, identify areas for improvement, and take action to improve employee engagement, productivity, and retention. |
| ![Lotis Blue logo.](images/data_connect_logo_lotis_blue.png)   | **Lotis Blue** utilizes organizational network analysis (ONA) to enhance diversity, equity, and inclusion outcomes. Also applying ONA principles to improve customer relationships and revenue velocity. |
| ![Neo4j logo.](images/data_connect_logo_neo4j.png)   | **Neo4j** constructs security and compliance analytics to uncover the hidden patterns of communication in your organization. To learn more, see [Using Microsoft Graph to understand enterprise communication](https://www.youtube.com/watch?v=no6iWuswR0c&list=PLWZJrkeLOrbaSmfaIM6ogv-LQUP0tleTw).  |
| ![Neudesic logo.](images/data_connect_logo_neudesic.png)   | **Neudesic** extends their Microsoft 365 data and Viva Insights collaboration metrics into customer’s Azure environment to further display relevant metrics for employees within other systems and portals. |
| ![Parabole logo.](images/data_connect_logo_parabole.png)   | **Parabole** illustrates true cost to maintain the channel, time spent with partners by product, and mismatches between partner investment & partner value. |
| ![TCS logo.](images/data_connect_logo_tata_cs.png)   | **TLC** identifies patterns and trends in employee behavior during weekends. Gain insights into how weekend working affects overall employee happiness scores. |
| ![Veldhoen logo.](images/data_connect_logo_veldhoen.png)   | **Veldhoen** facilitates collaboration and connections between various business units within the company as a way to drive innovation. |
| ![Wipro logo.](images/data_connect_logo_wipro.png)   | **Wipro** enables their organization to effectively manage and classify data classification during mergers, acquisitions, and divesture scenarios. |

## Pricing 

Microsoft Graph Data Connect consumption charges are billed using Azure subscriptions. For details about pricing rates, see [Pricing - Microsoft Graph Data Connect](https://azure.microsoft.com/pricing/details/graph-data-connect/). 

Read more about the recent [Microsoft Graph Data Connect pricing updates](https://devblogs.microsoft.com/microsoft365dev/microsoft-graph-data-connect-pricing-updates-2).

## Related content

- [Build your first Microsoft Graph Data Connect application (tutorial)](data-connect-quickstart.yml)
- [Data Connect frequently asked questions](data-connect-faq.md)
- [Datasets, regions, and sinks](data-connect-datasets.md)
