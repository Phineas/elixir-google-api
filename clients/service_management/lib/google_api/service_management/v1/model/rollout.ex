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

defmodule GoogleApi.ServiceManagement.V1.Model.Rollout do
  @moduledoc """
  A rollout resource that defines how service configuration versions are pushed to control plane systems. Typically, you create a new version of the service config, and then create a Rollout to push the service config.

  ## Attributes

  - createTime (DateTime.t): Creation time of the rollout. Readonly. Defaults to: `null`.
  - createdBy (String.t): The user who created the Rollout. Readonly. Defaults to: `null`.
  - deleteServiceStrategy (DeleteServiceStrategy): The strategy associated with a rollout to delete a &#x60;ManagedService&#x60;. Readonly. Defaults to: `null`.
  - rolloutId (String.t): Optional unique identifier of this Rollout. Only lower case letters, digits  and &#39;-&#39; are allowed.  If not specified by client, the server will generate one. The generated id will have the form of &lt;date&gt;&lt;revision number&gt;, where \&quot;date\&quot; is the create date in ISO 8601 format.  \&quot;revision number\&quot; is a monotonically increasing positive number that is reset every day for each service. An example of the generated rollout_id is &#39;2016-02-16r1&#39; Defaults to: `null`.
  - serviceName (String.t): The name of the service associated with this Rollout. Defaults to: `null`.
  - status (String.t): The status of this rollout. Readonly. In case of a failed rollout, the system will automatically rollback to the current Rollout version. Readonly. Defaults to: `null`.
    - Enum - one of [ROLLOUT_STATUS_UNSPECIFIED, IN_PROGRESS, SUCCESS, CANCELLED, FAILED, PENDING, FAILED_ROLLED_BACK]
  - trafficPercentStrategy (TrafficPercentStrategy): Google Service Control selects service configurations based on traffic percentage. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t(),
          :createdBy => any(),
          :deleteServiceStrategy => GoogleApi.ServiceManagement.V1.Model.DeleteServiceStrategy.t(),
          :rolloutId => any(),
          :serviceName => any(),
          :status => any(),
          :trafficPercentStrategy =>
            GoogleApi.ServiceManagement.V1.Model.TrafficPercentStrategy.t()
        }

  field(:createTime, as: DateTime)
  field(:createdBy)
  field(:deleteServiceStrategy, as: GoogleApi.ServiceManagement.V1.Model.DeleteServiceStrategy)
  field(:rolloutId)
  field(:serviceName)
  field(:status)
  field(:trafficPercentStrategy, as: GoogleApi.ServiceManagement.V1.Model.TrafficPercentStrategy)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceManagement.V1.Model.Rollout do
  def decode(value, options) do
    GoogleApi.ServiceManagement.V1.Model.Rollout.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceManagement.V1.Model.Rollout do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
