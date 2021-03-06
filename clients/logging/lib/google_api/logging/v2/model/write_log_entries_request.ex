# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Logging.V2.Model.WriteLogEntriesRequest do
  @moduledoc """
  The parameters to WriteLogEntries.

  ## Attributes

  - dryRun (boolean()): Optional. If true, the request should expect normal response, but the entries won&#39;t be persisted nor exported. Useful for checking whether the logging API endpoints are working properly before sending valuable data. Defaults to: `null`.
  - entries ([LogEntry]): Required. The log entries to send to Stackdriver Logging. The order of log entries in this list does not matter. Values supplied in this method&#39;s log_name, resource, and labels fields are copied into those log entries in this list that do not include values for their corresponding fields. For more information, see the LogEntry type.If the timestamp or insert_id fields are missing in log entries, then this method supplies the current time or a unique identifier, respectively. The supplied values are chosen so that, among the log entries that did not supply their own values, the entries earlier in the list will sort before the entries later in the list. See the entries.list method.Log entries with timestamps that are more than the logs retention period in the past or more than 24 hours in the future will not be available when calling entries.list. However, those log entries can still be exported with LogSinks.To improve throughput and to avoid exceeding the quota limit for calls to entries.write, you should try to include several log entries in this list, rather than calling this method for each individual log entry. Defaults to: `null`.
  - labels (%{optional(String.t) &#x3D;&gt; String.t}): Optional. Default labels that are added to the labels field of all log entries in entries. If a log entry already has a label with the same key as a label in this parameter, then the log entry&#39;s label is not changed. See LogEntry. Defaults to: `null`.
  - logName (String.t): Optional. A default log resource name that is assigned to all log entries in entries that do not specify a value for log_name: \&quot;projects/[PROJECT_ID]/logs/[LOG_ID]\&quot; \&quot;organizations/[ORGANIZATION_ID]/logs/[LOG_ID]\&quot; \&quot;billingAccounts/[BILLING_ACCOUNT_ID]/logs/[LOG_ID]\&quot; \&quot;folders/[FOLDER_ID]/logs/[LOG_ID]\&quot; [LOG_ID] must be URL-encoded. For example, \&quot;projects/my-project-id/logs/syslog\&quot; or \&quot;organizations/1234567890/logs/cloudresourcemanager.googleapis.com%2Factivity\&quot;. For more information about log names, see LogEntry. Defaults to: `null`.
  - partialSuccess (boolean()): Optional. Whether valid entries should be written even if some other entries fail due to INVALID_ARGUMENT or PERMISSION_DENIED errors. If any entry is not written, then the response status is the error associated with one of the failed entries and the response includes error details keyed by the entries&#39; zero-based index in the entries.write method. Defaults to: `null`.
  - resource (MonitoredResource): Optional. A default monitored resource object that is assigned to all log entries in entries that do not specify a value for resource. Example: { \&quot;type\&quot;: \&quot;gce_instance\&quot;,   \&quot;labels\&quot;: {     \&quot;zone\&quot;: \&quot;us-central1-a\&quot;, \&quot;instance_id\&quot;: \&quot;00000000000000000000\&quot; }} See LogEntry. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dryRun => any(),
          :entries => list(GoogleApi.Logging.V2.Model.LogEntry.t()),
          :labels => map(),
          :logName => any(),
          :partialSuccess => any(),
          :resource => GoogleApi.Logging.V2.Model.MonitoredResource.t()
        }

  field(:dryRun)
  field(:entries, as: GoogleApi.Logging.V2.Model.LogEntry, type: :list)
  field(:labels, type: :map)
  field(:logName)
  field(:partialSuccess)
  field(:resource, as: GoogleApi.Logging.V2.Model.MonitoredResource)
end

defimpl Poison.Decoder, for: GoogleApi.Logging.V2.Model.WriteLogEntriesRequest do
  def decode(value, options) do
    GoogleApi.Logging.V2.Model.WriteLogEntriesRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Logging.V2.Model.WriteLogEntriesRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
