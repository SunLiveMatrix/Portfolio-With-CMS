import {  } from '/home/admin/dlang.net/Portfolio-With-CMS/packages/client/src/components/projects-gallery/projects-gallery';
import { ProjectItem } from '../../../../components/project-item/project-item';
import { createImage } from '../../../../api/fake/fake-data';

export default Object({
  name: 'ProjectItem',
  Board: () => Element,
  isSnippet: true,
  environmentProps: {
    canvasWidth: 572,
  },
});
