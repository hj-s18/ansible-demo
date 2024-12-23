#!/bin/bash
# 스크립트 실행 시 Bash 인터프리터를 사용하겠다는 선언
# 즉, 이 스크립트는 Bash 셸에서 실행됨

ansible all -a 'kubeadm reset -f'
# ansible : Ansible 명령어로, 지정된 호스트 그룹에서 명령 실행함
# all : 인벤토리 파일에 정의된 모든 호스트를 대상으로 작업 실행
  # all : 인벤토리의 모든 노드를 의미함
# -a 'kubeadm reset -f' : 모든 대상 노드에서 실행할 명령 지정
  # kubeadm reset 
    # Kubernetes 클러스터를 초기화할 때 설정한 모든 상태 초기화
    # 워커 노드와 컨트롤 플레인에서 Kubernetes 설정(예: 인증서, 구성 파일 등)을 제거함
  # -f : 강제 실행 옵션 (사용자 확인 없이 명령 실행)
