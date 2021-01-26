FROM rook/ceph:v1.5.0.352.gd99092d

ADD lvm.py /usr/lib/python3.6/site-packages/ceph_volume/api

RUN pushd /usr/lib/python3.6/site-packages/ceph_volume/api && python3 -m compileall && popd

