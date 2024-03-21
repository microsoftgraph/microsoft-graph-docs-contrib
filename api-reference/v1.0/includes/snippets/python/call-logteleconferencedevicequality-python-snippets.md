---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.log_teleconference_device_quality_post_request_body import LogTeleconferenceDeviceQualityPostRequestBody
from msgraph.generated.models.teleconference_device_quality import TeleconferenceDeviceQuality
from msgraph.generated.models.teleconference_device_media_quality import TeleconferenceDeviceMediaQuality
from msgraph.generated.models.teleconference_device_audio_quality import TeleconferenceDeviceAudioQuality
from msgraph.generated.models.teleconference_device_video_quality import TeleconferenceDeviceVideoQuality
from msgraph.generated.models.teleconference_device_screen_sharing_quality import TeleconferenceDeviceScreenSharingQuality

graph_client = GraphServiceClient(credentials, scopes)

request_body = LogTeleconferenceDeviceQualityPostRequestBody(
	quality = TeleconferenceDeviceQuality(
		odata_type = "#microsoft.graph.teleconferenceDeviceQuality",
		call_chain_id = UUID("0622673d-9f69-49b3-9d4f-5ec64f42ecce"),
		participant_id = UUID("ea078406-b5d4-4d3c-b85e-90103dcec7f6"),
		media_leg_id = UUID("bd9ee398-4b9d-42c7-8b8d-4e8efad9435f"),
		device_name = "TestAgent",
		device_description = "TestDescription",
		media_quality_list = [
			TeleconferenceDeviceAudioQuality(
				odata_type = "#microsoft.graph.teleconferenceDeviceAudioQuality",
				channel_index = 1,
				media_duration = "PT20M",
				network_link_speed_in_bytes = 13000,
				local_i_p_address = "127.0.0.1",
				local_port = 6300,
				remote_i_p_address = "102.1.1.101",
				remote_port = 6301,
				inbound_packets = 5500,
				outbound_packets = 5400,
				average_inbound_packet_loss_rate_in_percentage = 0.01,
				average_outbound_packet_loss_rate_in_percentage = 0.02,
				maximum_inbound_packet_loss_rate_in_percentage = 0.05,
				maximum_outbound_packet_loss_rate_in_percentage = 0.06,
				average_inbound_round_trip_delay = "PT0.03S",
				average_outbound_round_trip_delay = "PT0.04S",
				maximum_inbound_round_trip_delay = "PT0.13S",
				maximum_outbound_round_trip_delay = "PT0.14S",
				average_inbound_jitter = "PT0.01S",
				average_outbound_jitter = "PT0.015S",
				maximum_inbound_jitter = "PT0.023S",
				maximum_outbound_jitter = "PT0.024S",
			),
			TeleconferenceDeviceVideoQuality(
				odata_type = "#microsoft.graph.teleconferenceDeviceVideoQuality",
				channel_index = 1,
				media_duration = "PT20M",
				network_link_speed_in_bytes = 13000,
				local_i_p_address = "127.0.0.1",
				local_port = 6300,
				remote_i_p_address = "102.1.1.101",
				remote_port = 6301,
				inbound_packets = 5500,
				outbound_packets = 5400,
				average_inbound_packet_loss_rate_in_percentage = 0.01,
				average_outbound_packet_loss_rate_in_percentage = 0.02,
				maximum_inbound_packet_loss_rate_in_percentage = 0.05,
				maximum_outbound_packet_loss_rate_in_percentage = 0.06,
				average_inbound_round_trip_delay = "PT0.03S",
				average_outbound_round_trip_delay = "PT0.04S",
				maximum_inbound_round_trip_delay = "PT0.13S",
				maximum_outbound_round_trip_delay = "PT0.14S",
				average_inbound_jitter = "PT0.01S",
				average_outbound_jitter = "PT0.015S",
				maximum_inbound_jitter = "PT0.023S",
				maximum_outbound_jitter = "PT0.024S",
			),
			TeleconferenceDeviceScreenSharingQuality(
				odata_type = "#microsoft.graph.teleconferenceDeviceScreenSharingQuality",
				channel_index = 1,
				media_duration = "PT20M",
				network_link_speed_in_bytes = 13000,
				local_i_p_address = "127.0.0.1",
				local_port = 6300,
				remote_i_p_address = "102.1.1.101",
				remote_port = 6301,
				inbound_packets = 5500,
				outbound_packets = 5400,
				average_inbound_packet_loss_rate_in_percentage = 0.01,
				average_outbound_packet_loss_rate_in_percentage = 0.02,
				maximum_inbound_packet_loss_rate_in_percentage = 0.05,
				maximum_outbound_packet_loss_rate_in_percentage = 0.06,
				average_inbound_round_trip_delay = "PT0.03S",
				average_outbound_round_trip_delay = "PT0.04S",
				maximum_inbound_round_trip_delay = "PT0.13S",
				maximum_outbound_round_trip_delay = "PT0.14S",
				average_inbound_jitter = "PT0.01S",
				average_outbound_jitter = "PT0.015S",
				maximum_inbound_jitter = "PT0.023S",
				maximum_outbound_jitter = "PT0.024S",
			),
		],
	),
)

await graph_client.communications.calls.log_teleconference_device_quality.post(request_body)


```