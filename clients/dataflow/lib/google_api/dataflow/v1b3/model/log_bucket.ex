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

defmodule GoogleApi.Dataflow.V1b3.Model.LogBucket do
  @moduledoc """
  Bucket of values for Distribution&#39;s logarithmic histogram.

  ## Attributes

  - count (String): Number of values in this bucket. Defaults to: `null`.
  - log (Integer): floor(log2(value)); defined to be zero for nonpositive values.   log(-1) &#x3D; 0   log(0) &#x3D; 0   log(1) &#x3D; 0   log(2) &#x3D; 1   log(3) &#x3D; 1   log(4) &#x3D; 2   log(5) &#x3D; 2 Defaults to: `null`.
  """

  defstruct [
    :"count",
    :"log"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.LogBucket do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.LogBucket do
  def encode(value, options) do
    GoogleApi.Dataflow.V1b3.Deserializer.serialize_non_nil(value, options)
  end
end
