
 ###########DATASETS
# label='pageb'
# label='shuttle'
# label='OCR'
label='landsat'
# label ='letter-recognition'
# label = 'KDD'
# label = 'covertype'
# label = 'MNIST'


 if (label=='pageb'){
  # # # page b
  data=read.csv("~/data_sets/page-blocks.data",sep="")
  n_col=ncol(data)
  o_col=n_col
  tr=as.data.frame(table(data[[o_col]]))[[1]]
  known_classes=c(1,5)
  # known_class=c(1)
  print("pageb")
  } else if (label=='shuttle'){
  ###############################
  # # shuttle dataset
  # # mytestdata=read.csv('~/data_sets/shuttle_data/shuttle_tst.csv',sep="")
  data1=read.csv("~/data_sets/shuttle_data/shuttle_trn1.csv")
  # names(mytestdata)=names(data1)
  # data=rbind(data1,mytestdata)
  data=data1
  o_col=ncol(data)#output class column
  n_col=ncol(data)
  tr=as.data.frame(table(data[[o_col]]))[[1]]
  ##known_class=c(1)
  known_classes=c(1,4)
  print("shuttle")
  }  else if (label=='OCR'){
  # # # # # # OCR-Optical character recognitio
  data_trn=read.csv('~/data_sets/optdigits/optdigits.tra')#OCR
  data_tes=read.csv('~/data_sets/optdigits/optdigits.tes')
  names(data_tes)=names(data_trn)
  data=rbind(data_trn,data_tes)
  n_col=ncol(data)
  o_col=n_col
  tr=as.data.frame(table(data[[o_col]]))[[1]]
  known_classes=c(1,3,4,5,7)
  # known_class=c(1)
  print("OCR")
  } else if (label=='landsat'){
#     ##########Landsat
  data_trn=read.csv('~/data_sets/landsat/sat.trn',sep="")
  data_tst=read.csv('~/data_sets/landsat/sat.tst',sep="")
  names(data_tst)=names(data_trn)
  data=rbind(data_trn,data_tst)
  n_col=ncol(data)
  o_col=n_col
  tr=as.data.frame(table(data[[o_col]]))[[1]]
  ## known_class=c(1)
  print("landsat")
  known_classes=c(1,7)
  } else if (label == "letter-recognition"){
# # ###############
  data=read.csv('~/R/workspace_r~/data_sets/letter-recognition.data')
  n_col=ncol(data)
  o_col=1
  data[[1]]=as.numeric(data[[1]])
  tr=as.data.frame(table(data[[o_col]]))[[1]]
  # known_class=c(1)
  known_classes=c(1,3,5,7,9,11,13,15,17,19,21,23,26,25)
  # known_classes=c(1,3,5,7,9,11,13,15,17,19)#,21,23,26,25)
  print("letter-recognition")
  } else if (label == "KDD"){

      ### KDD
  data=read.csv("~/data_sets/kdd_mod.csv",sep=",")
  n_col=ncol(data)
  o_col=n_col
  tr=as.data.frame(table(data[[o_col]]))[[1]]
  # known_class=c(19)
  print("kdd")
  known_classes=c(19,10)
  } else if (label == "MNIST"){
  ###############MNIST
  data_train=read.csv('~/R/workspace_r~/data_sets/mnist_train.csv')
  data_test=read.csv('~/R/workspace_r~/data_sets/mnist_test.csv')
  names(data_test)=names(data_train)
  data=rbind(data_train,data_test)
  n_col=ncol(data)
  o_col=1
  tr=as.data.frame(table(data[[o_col]]))[[1]]
  # known_class=c(1)
  known_classes=c(1,3,7)
  print("MNIST")
  } else if (label == "covertype"){
  data=read.csv("~/data_sets/cover_mod_small.csv",sep=',')
  n_col=ncol(data)
  o_col=n_col
  tr=as.data.frame(table(data[[o_col]]))[[1]]
  known_class=c(0)
  print("Covertype")
  }