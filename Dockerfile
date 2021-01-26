FROM rook/ceph:v1.5.5

ADD lvm.py /usr/lib/python3.6/site-packages/ceph_volume/api

RUN pushd /usr/lib/python3.6/site-packages/ceph_volume/api && python3 -m compileall && popd

