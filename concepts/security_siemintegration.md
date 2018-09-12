# Integrate Microsoft Graph Security API alerts with a SIEM

The Microsoft Graph Security API enables managing security alerts from all Microsoft security products, known as Microsoft Graph Security providers, through a single REST endpoint. Some organizations may already ingest Azure-specific log data through Azure Monitor into SIEM solutions. To simplify integration, the security alerts available through the Microsoft Graph Security API may also be provisioned by the customer to their subscription via Azure Monitor. If your organization has already configured Azure Monitor integration with your SIEM solution, you can now easily stream your organization’s security alerts in addition to your existing data available through Azure Monitor.

Azure Monitor supports connectors to several SIEM products. A list of supported SIEM products can be found in [send monitoring data to an event hub](https://docs.microsoft.com/en-us/azure/monitoring-and-diagnostics/monitor-stream-monitoring-data-event-hubs#what-can-i-do-with-the-monitoring-data-being-sent-to-my-event-hub). Of this list, Microsoft Graph Security API integration is presently available for [Splunk](https://splunkbase.splunk.com/) and [QRadar](https://www.ibm.com/us-en/marketplace/ibm-qradar-siem).

Read the following  for instructions on Microsoft Graph security API integration for specific SIEM solutions.

- [Splunk](security-splunk-siemintegration.md)
- [QRadar](security-qradar-siemintegration.md)
