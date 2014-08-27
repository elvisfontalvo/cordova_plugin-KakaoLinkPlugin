cordova_plugin-KakaoLinkPlugin
==============================

KakaoLinkPlugin (IOS only)

Usage

    protected function onsPickerButtonClicked(event:MouseEvent):void
        {
            var picker:NativePickerDialog = new NativePickerDialog();
            var pickerlist1:PickerList = new PickerList(["HAHAHA","ATATAT","tatasd"],1);
            pickerlist1.addEventListener(NativeDialogListEvent.LIST_CHANGE,mess);

            var pickerlist2:PickerList = new PickerList(["affasf","sagasdg","ah5we","fdsad"],2);
            pickerlist2.addEventListener(NativeDialogListEvent.LIST_CHANGE,mess);

            picker.dataProvider = Vector.<PickerList>([pickerlist1,pickerlist2]);

            picker.addEventListener(NativeDialogEvent.CLOSED,readAllSelectedValuesFromPickers);

            picker.show();
        }

        private function readSelectedValuesFromPickerList(event:NativeDialogListEvent):void
        {
            var pickerList:PickerList = PickerList(event.target);
            trace(event);
            trace("selectedIndex: "+pickerList.selectedIndex);
            trace("selectedItem: "+pickerList.selectedItem);
        }

        private function readAllSelectedValuesFromPickers(event:NativeDialogEvent):void
        {
            var picker:NativePickerDialog = NativePickerDialog(event.target);
            var v:Vector.<PickerList> = picker.dataProvider;
            var pickerList:PickerList;
            trace(event);
            for (var i:int = 0; i < v.length; i++) 
            {
                pickerList = v[i];
                trace("pickerlist "+i);
                trace("selectedIndex: "+pickerList.selectedIndex);
                trace("selectedItem: "+pickerList.selectedItem);
            }

            picker.dispose();
        }
