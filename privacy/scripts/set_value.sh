#!/bin/sh -e

curl -X POST --data '{"jsonrpc":"2.0","method":"eea_sendRawTransaction","params":["0xf8ee808203e8832dc6c0942f351161a80d74047316899342eedc606b13f9f880a46057361d00000000000000000000000000000000000000000000000000000000000003e8820fe8a0cbb5fe5258858c2fd41cb584df6d58c86d7ef817a1776e63f9647669efab5610a014c448dc0ec1c73d26e2cda913c66bbc973c472eb99f08948e59f9cc4504c7b6ac4b6f32625671442b6e4e6c4e594c35454537793349644f6e766966746a69697a706a52742b4854754642733dedac41316156744d784c4355486d425648586f5a7a7a42675062572f776a3561784470573958386c393153476f3d8a72657374726963746564"],"id":1}' http://localhost:20002
