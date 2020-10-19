#! /bin/bash

# Copyright 2019 Intel Corporation
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


cd ../../..
export TCF_HOME=`pwd`
cd src
pip uninstall dist/avalon_sdk_direct-0.0.1-py3-none-any.whl 
make clean
make
pip install dist/avalon_sdk_direct-0.0.1-py3-none-any.whl

# cd core/sdk
# pip uninstall dist/avalon_sdk_direct-0.0.4-py3-none-any.whl 
# make clean
# make
# pip install dist/avalon_sdk_direct-0.0.4-py3-none-any.whl

#cd avalon_sdk_direct/unit_tests
# python test_work_order_encryption_key_jrpc_impl.py
# python test_work_order_jrpc_impl.py
#python test_worker_registry_jrpc_impl.py
cd ../generic_client
python generic_client.py -o --uri "http://localhost:1947" --workload_id "echo-result" --in_data "Hello" --worker_id "singleton-worker-1"


