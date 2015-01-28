<btn-sizes>
    <btn each={button in buttons} classname={button.classname} text={button.text} size={button.size} />

    this.buttons = [
        {classname: 'primary', text: 'Primary button text', size: 'lg'},
        {classname: 'success', text: 'Success button text'},
        {classname: 'info', text: 'Info button text', size: 'sm'},
        {classname: 'warning', text: 'Warning button text', size: 'xs'}
    ];

</btn-sizes>
