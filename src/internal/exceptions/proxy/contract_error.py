# Copyright 2020 Intel Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

from enums.proxy.contract_response import ContractResponse

class ContractFailed(Exception):
    """All errors and status are returned in 
    the following generic JSON RPC error format"""

    def __init__(self, message):

        self.error = {
            "code": ContractResponse.ERROR,
            "message": message   
        }

