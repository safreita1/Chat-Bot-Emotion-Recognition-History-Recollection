
(cl:in-package :asdf)

(defsystem "r_chatbot-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :r_chatbot-msg
)
  :components ((:file "_package")
    (:file "Context" :depends-on ("_package_Context"))
    (:file "_package_Context" :depends-on ("_package"))
    (:file "EmotionRecognize" :depends-on ("_package_EmotionRecognize"))
    (:file "_package_EmotionRecognize" :depends-on ("_package"))
    (:file "FaceRecognize" :depends-on ("_package_FaceRecognize"))
    (:file "_package_FaceRecognize" :depends-on ("_package"))
    (:file "FaceTrain" :depends-on ("_package_FaceTrain"))
    (:file "_package_FaceTrain" :depends-on ("_package"))
    (:file "GetTopics" :depends-on ("_package_GetTopics"))
    (:file "_package_GetTopics" :depends-on ("_package"))
    (:file "LoadHistory" :depends-on ("_package_LoadHistory"))
    (:file "_package_LoadHistory" :depends-on ("_package"))
    (:file "WriteHistory" :depends-on ("_package_WriteHistory"))
    (:file "_package_WriteHistory" :depends-on ("_package"))
  ))