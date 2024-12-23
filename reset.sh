#!/bin/bash
# 스크립트 실행 시 Bash 인터프리터를 사용하겠다는 선언
# 즉, 이 스크립트는 Bash 셸에서 실행됨

ansible all -a 'kubeadm reset -f'
# ansible : Ansible 명령어로, 지정된 호스트 그룹에서 명령 실행함
# all : 인벤토리 파일에 정의된 모든 호스트를 대상으로 작업 실행
  # all : 인벤토리의 모든 노드를 의미함
  # 특정 그룹만 초기화하려면, all 대신 그룹 이름 사용하면 됨
    # 例: ansible controlplanes -a 'kubeadm reset -f' : 컨트롤 플레인 노드만 초기화함
# -a 'kubeadm reset -f' : 모든 대상 노드에서 실행할 명령 지정
  # kubeadm reset 
    # Kubernetes 클러스터의 모든 상태를 제거 => 기존 설정이나 데이터 복구 불가능
    # 워커 노드와 컨트롤 플레인에서 Kubernetes 설정(예: ETCD 데이터, 인증서, 구성 파일 등) 제거
  # -f : 강제 실행 옵션 (사용자 확인 없이 명령 실행)



# 이 스크립트 실행하면, 모든 노드에서 kubeadm을 사용해 클러스터 상태를 초기화함
# 후속작업으로 클러스터 재구성을 위해 kubeadm init 또는 kubeadm join 명령 실행해야 함
# chmod +x reset.sh 으로 이 파일에 실행권한 부여한 후, ./reset-cluster.sh 으로 스크립트 실행하면 됨
