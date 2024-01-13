import { } from '/home/admin/dlang.net/Portfolio-With-CMS/packages/client/src/pages/project-page/project-page';
import { Header } from '../../../../components/header/header';
import { ComponentWrapper } from '../../../board-wrappers/component-wrapper';
import { ROUTES } from '../../../../router/config';

export default Object({
    name: 'Header',
    Board: () => Element,
    isSnippet: false,
    environmentProps: {
        windowWidth: 1024,
        windowHeight: 768,
        canvasWidth: 1024
    },
});
